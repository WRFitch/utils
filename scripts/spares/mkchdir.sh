#/bin/bash
#create directory, then go to directory

mkdir -p -- "$1" && cd -P -- "$1"
