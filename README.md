# yt2mp3

Download YouTube video and convert the audio track to MP3.

## Usage

```bash
./convert.sh <url> <url> ...
```
Downloads the target URL(s) as `.m4a` and uses `ffmpeg` to convert the audio track, 
saving the output as a standalone MP3.

## Dependencies

Download and install:
  - youtube-dl
  - ffmpeg
