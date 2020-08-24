#!/bin/bash

#runner for all the other scripts and utils in /scripts dir

print_help(){
	echo "wfutil goog <search> - searches the internet for your query"
}

cd /src/utils/scripts
if [$1 == 'goog']; then
	./goog.sh $@
else 
	print_help()
fi 
