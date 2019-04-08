#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "USAGE: $0 <video file>"
    exit 1
fi
ffmpeg -i "$1" -vf "subtitles=$1:force_style='Fontsize=36'" "$1-with_subtitles.mp4"
