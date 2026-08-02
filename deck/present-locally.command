#!/bin/bash
# Designing with AI — local presenting server.
# Double-click me (or: bash present-locally.command).
# Serves the deck over http://localhost so the liquid video pours work
# exactly like the live site. file:// cannot do this: Chrome blocks
# video frames from reaching the WebGL shader on file:// (opaque-origin
# canvas taint), so opening present.html directly shows plain videos.
cd "$(dirname "$0")"
PORT=8321
(python3 -m http.server $PORT >/dev/null 2>&1 &)
sleep 1
open "http://localhost:$PORT/present.html"
echo "Presenting at http://localhost:$PORT/present.html — close this window when done."
wait
