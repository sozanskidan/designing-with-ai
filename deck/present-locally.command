#!/bin/bash
# Designing with AI — local presenting server.
#
# Double-click this file (or run: bash present-locally.command).
#
# Why this exists: opening present.html straight from disk uses file://,
# where Chrome treats every local file as its own origin. Video frames
# and file-referenced images then can't reach the WebGL shader, so those
# cards skip the liquid pour and just appear. Served over http they pour
# exactly like the live site.
#
# Works offline. Nothing to install — python3 ships with macOS.

cd "$(dirname "$0")" || exit 1
PORT=8321
URL="http://localhost:$PORT/present.html"

# Open the browser a beat after the server comes up.
( sleep 1; open "$URL" ) &

echo ""
echo "  Presenting at $URL"
echo ""
echo "  Keep this window open while you present."
echo "  Press Ctrl-C (or close the window) to stop the server."
echo ""

# Foreground, so closing this window actually stops it.
python3 -m http.server "$PORT" --bind 127.0.0.1
