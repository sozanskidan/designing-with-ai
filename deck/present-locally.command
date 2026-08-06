#!/bin/bash
# Designing with AI — local presenting server.
#
# Double-click this file (or run: bash present-locally.command).
#
# Fully offline. Nothing in the deck is fetched from the internet — the
# fonts and several images are embedded in present.html, and every video
# and remaining image is a file sitting in this folder. Wi-Fi can be off
# the whole time.
#
# Why this exists, and why it is not `python3 -m http.server`:
#
#   1. Opening present.html straight from disk uses file://, where
#      Chrome treats every local file as its own origin. Video frames
#      then cannot reach the WebGL shader, so those cards skip the
#      liquid pour and just appear.
#
#   2. python3's built-in server ignores HTTP Range requests. It never
#      sends Accept-Ranges, and when Chrome asks for a 100KB slice of a
#      12MB video it returns the ENTIRE file with a 200 instead. With 18
#      clips in the deck and reveal preloading neighbouring slides, that
#      is hundreds of megabytes of duplicated transfer, and Chrome
#      starts abandoning the loads. It looks exactly like "the videos
#      stopped working". The server below answers ranges properly.
#
# Nothing to install — python3 ships with macOS.

cd "$(dirname "$0")" || exit 1

python3 - <<'PYCODE'
import http.server, mimetypes, os, re, shutil, socket, sys, threading, webbrowser

PAGE = "present.html"
PORT = 8321

# ── Preflight ─────────────────────────────────────────────────────
# Every file the deck asks for, checked before the browser opens. A
# missing video is silent at runtime — the card just stays blank — so
# it is worth ten milliseconds to find out here rather than on stage.
def preflight():
    if not os.path.exists(PAGE):
        print("\n  !! %s is not in this folder." % PAGE)
        print("     This launcher has to sit next to the deck and its media.\n")
        return False
    html = open(PAGE, encoding="utf-8", errors="ignore").read()
    refs = set()
    for m in re.finditer(r'(?:src|href)="([^"]+)"', html):
        u = m.group(1)
        if u.startswith(("data:", "http:", "https:", "#", "javascript:")):
            continue
        if "${" in u or not u.strip():
            continue          # template literals inside the bundled scripts
        refs.add(u.split("?")[0].split("#")[0])
    missing = sorted(r for r in refs if not os.path.exists(r))
    if missing:
        print("\n  !! %d file(s) the deck needs are not in this folder:\n" % len(missing))
        for r in missing:
            print("       " + r)
        print("\n     Those slides will come up blank. Serving anyway.\n")
    else:
        print("  All %d media files present." % len(refs))
    return True

# ── A server that speaks Range ────────────────────────────────────
class Slice:
    """A capped reader, so copyfileobj stops at the end of the range."""
    def __init__(self, f, length):
        self.f, self.left = f, length
    def read(self, n=-1):
        if self.left <= 0:
            return b""
        if n is None or n < 0 or n > self.left:
            n = self.left
        data = self.f.read(n)
        self.left -= len(data)
        return data
    def close(self):
        self.f.close()

class Handler(http.server.SimpleHTTPRequestHandler):
    protocol_version = "HTTP/1.1"

    def log_message(self, fmt, *args):
        pass                  # keep the window quiet while presenting

    def send_head(self):
        path = self.translate_path(self.path)
        if os.path.isdir(path):
            return super().send_head()
        try:
            f = open(path, "rb")
        except OSError:
            self.send_error(404, "Not found")
            return None

        st = os.fstat(f.fileno())
        size = st.st_size
        ctype = mimetypes.guess_type(path)[0] or "application/octet-stream"
        rng = self.headers.get("Range")

        if not rng:
            self.send_response(200)
            self.send_header("Content-Type", ctype)
            self.send_header("Content-Length", str(size))
            self.send_header("Accept-Ranges", "bytes")
            self.send_header("Last-Modified", self.date_time_string(st.st_mtime))
            self.end_headers()
            return f

        m = re.match(r"bytes=(\d*)-(\d*)\s*$", rng.strip())
        if not m or (not m.group(1) and not m.group(2)):
            f.close()
            self.send_error(400, "Bad Range")
            return None

        if m.group(1) == "":                       # bytes=-N, the last N bytes
            start, end = max(0, size - int(m.group(2))), size - 1
        else:
            start = int(m.group(1))
            end = int(m.group(2)) if m.group(2) else size - 1

        if start >= size:
            f.close()
            self.send_response(416)
            self.send_header("Content-Range", "bytes */%d" % size)
            self.send_header("Content-Length", "0")
            self.end_headers()
            return None

        end = min(end, size - 1)
        length = end - start + 1
        f.seek(start)
        self.send_response(206)
        self.send_header("Content-Type", ctype)
        self.send_header("Content-Length", str(length))
        self.send_header("Content-Range", "bytes %d-%d/%d" % (start, end, size))
        self.send_header("Accept-Ranges", "bytes")
        self.send_header("Last-Modified", self.date_time_string(st.st_mtime))
        self.end_headers()
        return Slice(f, length)

    def copyfile(self, source, outputfile):
        # A closed pipe just means Chrome moved on; not worth a traceback.
        try:
            shutil.copyfileobj(source, outputfile)
        except (BrokenPipeError, ConnectionResetError):
            pass

def free_port(start):
    for p in range(start, start + 20):
        with socket.socket() as s:
            try:
                s.bind(("127.0.0.1", p))
                return p
            except OSError:
                continue
    return start

print("")
if not preflight():
    input("  Press return to close. ")
    sys.exit(1)

PORT = free_port(PORT)
url = "http://localhost:%d/%s" % (PORT, PAGE)
srv = http.server.ThreadingHTTPServer(("127.0.0.1", PORT), Handler)
srv.daemon_threads = True

threading.Timer(1.0, lambda: webbrowser.open(url)).start()

print("")
print("  Presenting at %s" % url)
print("")
print("  Keep this window open while you present.")
print("  Press Ctrl-C (or close the window) to stop the server.")
print("")

try:
    srv.serve_forever()
except KeyboardInterrupt:
    print("\n  Stopped.\n")
PYCODE
