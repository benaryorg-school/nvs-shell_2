#!/bin/sh

function count()
{
	if [ -z "$1" ];then
		echo Kein Parameter uebergeben
		return 1
	fi
	if [ -d "$1" ];then
		echo Anzahl der Einträge: $(ls -a "$1"|wc -l)
		return 0
	else
		echo Ungueltiges Verzeichnis: \"$1\"
		return 2
	fi
}
