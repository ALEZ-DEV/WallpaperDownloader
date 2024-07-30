#!/bin/bash
images=()
readarray -t images <./image.list
number=0
downloaded=0

if [ ! -d ./saved_images ]; then
	mkdir -p ./saved_images
fi

for i in ${!images[@]}; do
	image_path="./saved_images/$i.jpg"

	if ! [ -e $image_path ]; then
		wget -O $image_path ${images[$i]}
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
