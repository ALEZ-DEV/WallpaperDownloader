#!/bin/bash
images=()
readarray -t images <./image.list
number=0

if [ ! -d ./saved_images ]; then
	mkdir -p ./saved_images
fi

for i in ${!images[@]}; do
	wget -O ./saved_images/$i.jpg ${images[$i]}
	number=$i
done
echo "$number images downloaded !"
