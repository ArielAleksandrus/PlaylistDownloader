curl "$1" > youtubepage.html
nodejs playlistfinder.js

title=$(head -n 1 title.txt)
echo $title
mkdir -p ~/Videos/YoutubePlaylist/"$title"/Favorites
cp list.txt ~/Videos/YoutubePlaylist/"$title"
cd ~/Videos/YoutubePlaylist/"$title"
while read line; do
	echo "downloading" $line
	youtube-dl $line --no-warnings
	echo "done"
	sleep 2
done <list.txt
rm ~/Videos/YoutubePlaylist/"$title"/list.txt