#!/bin/bash

#set -x

# Uebergabe Blogpost-ID (mit html am Ende)
ID=$1
#echo "Suche Blogpost mit ID $ID"

if [[ $ID != *"html"* ]]; then
	ID=${ID}.html
#	echo "ID ergänzt zu $ID"
fi

[ -f ${HTMLPath}/$ID ] && {
	echo "     "
	echo "Blogpost ID $ID"
  	echo "------------------"
	cat ${HTMLPath}/$ID
}

