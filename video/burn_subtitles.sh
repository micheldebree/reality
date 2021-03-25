#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "USAGE: $0 <video file>"
    exit 1
fi

# Determine video height
HEIGHT=$(ffprobe -v error -of default=noprint_wrappers=1 -show_entries stream=height "$1"  | grep -o 'height=[0-9]\+' | sed 's/height=//') || exit 1

# Calculate relative fontsize
((FONTSIZE=HEIGHT/30))

# Burn
ffmpeg -i "$1" -vf "subtitles=$1:force_style='Fontsize=$FONTSIZE" "subtitled-$1"
