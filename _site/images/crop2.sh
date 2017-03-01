#! /bin/bash
convert $1 -gravity center -extent $3 $2
mogrify -resize 800x500 $2 
mogrify -gravity center -crop 800x500+0+0 $2
