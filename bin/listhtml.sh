#!/bin/bash

#set -x

# Alle File im html-Ordner auflisten:
for f in ${HTMLPath}/*; do
	echo $(basename $f)
done

