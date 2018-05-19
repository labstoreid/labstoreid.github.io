#! /bin/bash
SOURCEDIR=./_posts0
TARGETDIR=./_posts
NEWDATE=$1
for FILE in `ls $SOURCEDIR/*.markdown`; do
	FNAME=`echo $FILE|sed -e "s|.*/||g"`
	#echo $FNAME
	cat $FILE|sed -e "s|MYPOSTDATE|"$NEWDATE"|g" > $TARGETDIR/$FNAME 
done
