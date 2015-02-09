#!/bin/sh

if [ $# -le 1 ];then
	exit 1
fi

if [ $1 = "-u" ];then
	str="^^"
elif [ $1 = "-l" ];then
	str=",,"
else
	exit 2
fi

shift

while [ ! -z $1 ];do
	if [ -f $1 ];then
		eval echo \${1$str}
	else
		echo \"$1\" does not exist
	fi
	shift
done
