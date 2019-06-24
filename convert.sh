#!/bin/bash
set -eu -o pipefail

# dependencies:
# - youtube-dl
# - ffmpeg

if [[ -z "$@" ]]; then
    echo "usage: $0 <url> <url> ..."
    exit 1
fi

# output dir
mkdir -p output && pushd output/

# Download as m4a
for URL in "$@"; do
    youtube-dl -f 140 $URL
done

# Use ffmpeg to rip m4a to mp3
for OUT in *.m4a; do
    ffmpeg -i "$OUT" -acodec libmp3lame -aq 2 "${OUT%.m4a}.mp3"
done

rm -f *.m4a
popd
