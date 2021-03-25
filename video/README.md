# Media scripts for macOS

Prerequisites:

- Homebrew. see [https://brew.sh](https://brew.sh) to install
- `brew install ffmpeg`
- `brew install youtube-dl`
- `brew install grep`
- `brew install sed`

## 1. Download video

With dutch subtitles embedded in the file, if present.

```sh
./download_video.sh <url>
```

Example:

```sh
./download_video.sh https://www.youtube.com/watch?v=Zh3Yz3PiXZw
```

## 2. Burn embedded subtitles into video

This burns the embedded subtitles into the video itself. Supply a video that has
embedded subtitles, like the video from step 1

```sh
./burn_subtitles.sh <video file>
```

Example:

```sh
./burn_subtitles.sh Alternative_Math_Short_Film.mp4
```

## Automator Service

Or you can install the automator service and do it all in one go.

```sh
cp -ai 'Reality Video Download.workflow' ~/Library/Services
```

Go to youtube video in Safari, right click url, choose Services from context
menu, next choose Reality Video Download. The video will appear in the
Downloads folder.
