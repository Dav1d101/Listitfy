#!/bin/bash

LIST_DEFAULT="-"
LIST_CHOICE=$1
TEXT=$2
if [ "$LIST_CHOICE" == "" ]
then
	LIST=$LIST_DEFAULT
else
	LIST=$LIST_CHOICE
fi
$(printf "%s" "sed s/^/$LIST/ $TEXT")


