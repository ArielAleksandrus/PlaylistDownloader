# PlaylistDownloader
Software to download a whole playlist from youtube

### Usage:
1. Find a youtube page that has a playlist (e.g. [this link](https://www.youtube.com/watch?list=RD8gvJX_L71bs&v=n3Go8ub9a1k))
2. Copy the URL
3. Execute PlaylistDownloader with the link as the parameter: `./downloadplaylist.sh <link here>`
4. Check the output to see if there are any errors. Also, check the folder "YoutubePlaylist" in your Videos folder, in your home directory.


### Requirements:
- [nodejs](https://nodejs.org/)
- [youtube-dl](https://github.com/rg3/youtube-dl/)
- [cheerio](https://github.com/cheeriojs/cheerio) (already included)
