# PlaylistDownloader
Software to download a whole playlist from youtube

### Requirements:
- [python2.7](https://www.python.org/download/releases/2.7/): `sudo apt-get install python2.7`
- [nodejs](https://nodejs.org/): `sudo apt-get install nodejs`
- [youtube-dl](https://github.com/rg3/youtube-dl/): `sudo apt-get install youtube-dl`
    - depends on "ffmepg" or "avprobe": `sudo apt-get install -y libav-tools`
- [cheerio](https://github.com/cheeriojs/cheerio) (already included)

### Usage:
1. Find a youtube page that has a playlist (e.g. [this link](https://www.youtube.com/watch?list=RD8gvJX_L71bs&v=n3Go8ub9a1k))
2. Copy the URL
3. Execute PlaylistDownloader with the link as the parameter, wrapped by double quotes: `./downloadplaylist.sh "<link here>" <options>`
4. Check the output to see if there are any errors. Also, check the folder "YoutubePlaylist" in your Videos folder, in your home directory.

### Options:
    --audio-only                       Downloads only the audio, as mp3, on Music folder, in the home directory

### Example:

`./downloadplaylist.sh "https://www.youtube.com/watch?list=RD8gvJX_L71bs&v=n3Go8ub9a1k" --audio-only`
