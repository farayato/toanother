#!/bin/bash

if [ "$1" == "" ] 
then
	echo "Usage ./toanother.sh [video.mp4] [song.mp3]"
else
	echo "Adding metadatas..."
	read -p "Title: " title
	read -p "Artist: " artist	
	read -p "Album: " album

	ffmpeg -i $1 -metadata title=$title -metadata artist=$artist -metadata album=$album $2 >/dev/null 2>&1
	echo -e "\nDone;"
fi 