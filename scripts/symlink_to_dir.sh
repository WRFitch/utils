#!/bin/bash 
#A script that creates symlinked duplicates of one directory in another directory. Easy way to migrate these files to /usr/bin. File extensions are removed. 

SOURCE_DIR=$1
#if SOURCE_DIR isn't an absolute filepath (smell tested for a leading /), make it so. 
if [[ $SOURCE_DIR != /* ]]; then
    SOURCE_DIR="$PWD/$1"
fi
TARGET_DIR=$2

for FILE in `ls "$SOURCE_DIR"`; do 
    #don't include directories or files that can't be executed.
    FILEPATH="$SOURCE_DIR/$FILE"
    if [ -d $FILEPATH ] || [ ! -x $FILEPATH  ]; then
        continue
    fi

    #remove suffixes
    NICE_FILENAME=$(echo "$FILE" | cut -f 1 -d '.')
    ln -s $SOURCE_DIR/$FILE $2/$NICE_FILENAME
done