#! /bin/bash
convert $1 -resize $3 -gravity center -crop 800x500+0+0 $2
