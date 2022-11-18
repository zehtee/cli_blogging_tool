#!/bin/bash

#set -x

# ------------------
# Startskript 
# ------------------

# Umgebung laden
#./init.sh
source CONFIG

# Backup ziehen
# cp -fp ${MyPath}/index.html ${MyPath}/index.html.backup

# Aufraeumen
${BinPath}/cleaner.sh

echo "---------- xnrft_CLIblog ----------"
echo "    "
echo "w) neuen Post schreiben"
echo "l) existierende Posts auflisten"
echo "r) existierenden Post auslesen"
echo "q) exit " 
read -p "-> " menu

case $menu in 
	w|W)
            	# Post schreiben
		${BinPath}/post.sh
		# Post parsen
		${BinPath}/parser.sh
		# Alle Posts mergen auf index.html
		${BinPath}/merger.sh
		;;
	l|L)
		# Posts auflisten
		${BinPath}/listhtml.sh
		;;
	r|R)    # Post ausgeben
		read -p "Blogpost-ID angeben: " ID
	        ${BinPath}/readhtml.sh $ID
		;;
	q|Q)
		echo "Auf Wiedersehen!"
		exit 0
		;;
esac

