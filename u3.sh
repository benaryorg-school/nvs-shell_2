#!/bin/sh

if [ $# -ne 1 ];then
	exit 1
fi

if [ -f $1 ];then
	echo USER: $(stat -c %U $1)
	echo LAST MODIFIED: $(stat -c %y $1 | cut -d: -f1-2)
else
	exit 2
fi
