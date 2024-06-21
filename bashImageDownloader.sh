#!/bin/bash
images=();
readarray -t images < ./image.list;
number=0;
for i in ${!images[@]}; do
	wget -O $HOME/.config/awesome/theme/assets/images$i.jpg ${images[$i]};
  number=$i;
done;
echo "$number images downloaded !";
