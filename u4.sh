#!/bin/sh

#a
cat schueler.csv | tr ';' '\t' > schueler.txt

#b
cat schueler.txt | awk '/1AHIF/ { print $4, $2, $1, $3 }' | sort -n

#c
cat schueler.txt | awk '/3?HIF/ { print $5, $1, $2, $3 }' | sort -t\  -k2,3
