#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "USAGE: $0 <video url>"
    exit 1
fi
youtube-dl \
  -f "mp4" \
  --restrict-filenames \
  --write-sub \
  --write-auto-sub \
  --embed-subs \
  --sub-lang nl \
  --recode-video mp4 \
  -o "./%(title)s.%(ext)s" \
  "$1"
