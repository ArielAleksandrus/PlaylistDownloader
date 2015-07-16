# PlaylistDownloader
Software to download a whole playlist from youtube

### Requirements:
- [nodejs](https://nodejs.org/)
- [youtube-dl](https://github.com/rg3/youtube-dl/)
- [cheerio](https://github.com/cheeriojs/cheerio) (already included)

### Usage:
1. Find a youtube page that has a playlist (e.g. [this link](https://www.youtube.com/watch?list=RD8gvJX_L71bs&v=n3Go8ub9a1k))
2. Copy the URL
3. Execute PlaylistDownloader with the link as the parameter, wrapped by double quotes: `./downloadplaylist.sh "<link here>" <options>`
4. Check the output to see if there are any errors. Also, check the folder "YoutubePlaylist" in your Videos folder, in your home directory.

### Options:
    --audio-only                       Downloads only the audio, as mp3, on Music folder, in the home directory

