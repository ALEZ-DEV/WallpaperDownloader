#!/bin/sh

missingArgumentErrorMsg="You need to use the command as the following : ./bashImageDownloader.sh <imageFilePath> <outputFolder>"

if [ -z "$1" ]; then
  echo "<imageFilePath> is the path to the images file to download and it's not set,"
  echo $missingArgumentErrorMsg
  exit 1
fi

if [ -z "$2" ]; then
  echo "<outputFolder> is the path to the folder output and it's not set,"
  echo $missingArgumentErrorMsg
  exit 1
fi

imageFilePath=$1
outputFolder=$2

images=()
readarray -t images <$imageFilePath
number=0
downloaded=0

if [ ! -d "$outputFolder" ]; then
	mkdir -p "$outputFolder"
fi

for i in ${!images[@]}; do
	image_path="$outputFolder/$i"

	if ! [ -e $image_path ]; then
		wget -O "$image_path" "${images[$i]}"
		((downloaded++))
	else
		echo "Image $i already exist, skipping..."
	fi

	number=$i
done

if [ $downloaded == 0 ]; then
	echo "No image has been downloaded"
else
	echo "$downloaded images downloaded !"
fi
