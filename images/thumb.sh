#! /bin/bash

if [ -e ./things_small ]; then
	rm -rf ./things_small
fi
cp -rf ./things ./things_small

for FILE in `ls ./things/*/*.jpg`; do
	echo $FILE
	FILE2=`echo $FILE|sed -e "s|things|things_small|g"`
	echo $FILE2
	convert $FILE -resize 25% $FILE2
done

#convert $1 -resize $3 -gravity center -crop 800x500+0+0 $2
