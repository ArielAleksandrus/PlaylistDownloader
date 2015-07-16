#!/bin/bash

curPath=`pwd`

# check if --audio-only is present.
audioOnly=0;
case "$2" in
(--audio-only) audioOnly=1;;
esac
###################################

# download youtube's page
curl "$1" > youtubepage.html
# playlistfinder.js: extract playlist's links into a file
nodejs playlistfinder.js
title=$(head -n 1 title.txt)
echo $title

# set path for the download.
# If it's only audio, save into Music
# Else, save into Videos.
dlPath="";
if [ $audioOnly -eq 1 ]; then
	dlPath=~/Music/YoutubePlaylist/"$title"/;
else
	dlPath=~/Videos/YoutubePlaylist/"$title"/;
fi

favoritesFolder=$dlPath"Favorites";

# create directory and copy the link list there.
mkdir -p "$favoritesFolder"
cp list.txt "$dlPath"
cd "$dlPath"

function handleAudio {
	youtube-dl --no-warnings --extract-audio --audio-format mp3 $1
}
function handleVideo {
	youtube-dl $1 --no-warnings
}

# iterate through list.txt, downloading.
while read line; do
	echo "downloading" $line
	if [ $audioOnly -eq 1 ]; then
		handleAudio $line
	else
		handleVideo $line
	fi
	echo "done"
	sleep 2
done <list.txt

# remove list.txt
list=$dlPath"list.txt";
rm "$list"

# rename the files, removing the youtube video ID from the name
for f in ./*
do
	if [ "$f" != "./Favorites" ]; then
		newName=`python "$curPath/rename.py" "$f"`
		mv "$f" "$newName"
	fi
done