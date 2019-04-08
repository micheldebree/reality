# Media scripts for macOS

Prerequisites:

- Homebrew. see [https://brew.sh](https://brew.sh) to install
- `brew install ffmpeg`
- `brew install youtube-dl`

## Download video

With dutch subtitles embedded, if present.

```sh
./download_video.sh <url>
```

Example:

```sh
./download_video.sh https://www.youtube.com/watch?v=Zh3Yz3PiXZw&t=2s
```

## Burn embedded subtitles into video

```sh
./burn_subtitles.sh <video file>
```

Example:

```sh
./burn_subtitles.sh Alternative_Math_Short_Film.mp4
```
