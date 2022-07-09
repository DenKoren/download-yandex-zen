# download-yandex-zen
Download video from Yandex.Zen service.

This script can be used on Mac OS X or Linux systems with ffmpeg and fish shell installed.

For convenience of Mac OS X users, there is 'install' script in the repository root. Basically it does the following:
- installs `ffmpeg`, `fish` and `git` using homebrew (`brew` command).
- installs `download-yandex-zen` script to `/usr/local/bin`
- installs `Yandex.Zen downloader` wrapper script for Mac OS X to current user's Desktop. You can move this wrapper wherever you want.

## For Linux users

### Installation
1. Install git, ffmpeg and fish shell
2. Clone this repository
3. Run make install
4. You're done!

Or simply copy and paste contents of `download-yandex-zen` script to any file you want on your local PC.

### Usage
`download-yandex-zen '<video page URL>' '<target file>'` 

- `<video page URL>` - the URL to the page with video you want to download. If page has several video files, the first found will be taken by the script.
- `<target file>` - path to file to store the downloaded content.

Script will choose the best possible quality available for video, located on page.
If you want to download only audio (e.g. podcasts), just choose file extension that can store only audio: e.g. `~/download.mp3` or `~/download.wav` will do the trick.

## For Mac OS X users

### Installation
1. Install [homebrew](https://brew.sh/) if not done yet.
2. Open Terminal.app
3. Copy `curl --silent 'https://raw.githubusercontent.com/DenKoren/download-yandex-zen/main/install.sh' | bash` to the command line and press enter.
3. You're done!

### Usage
Check `Yandex.Zen downloader` application on your desktop. This is the thing you should run to start the download process.

