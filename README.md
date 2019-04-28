# Media scripts for macOS

Prerequisites:

- Homebrew. see [https://brew.sh](https://brew.sh) to install
- `brew install ffmpeg`
- `brew install youtube-dl`
- `brew install grep`
- `brew install sed`

## Download video

With dutch subtitles embedded, if present.

```sh
./download_video.sh <url>
```

Example:

```sh
./download_video.sh https://www.youtube.com/watch?v=Zh3Yz3PiXZw
```

## Burn embedded subtitles into video

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
menu, next choose Reality Video Download.  The video will appear in the
Downloads folder.
