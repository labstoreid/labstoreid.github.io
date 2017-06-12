#! /bin/bash

if [ -e ./things ]; then
	rm -rf ./things
fi
cp -rf ./things_orig ./things

for FILE in `ls ./things_orig/*/*.jpg`; do
	echo $FILE
	FILE2=`echo $FILE|sed -e "s|things_orig|things|g"`
	echo $FILE2
	convert $FILE -resize 1200 $FILE2
done

#convert $1 -resize $3 -gravity center -crop 800x500+0+0 $2
