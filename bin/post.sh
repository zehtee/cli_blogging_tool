#!/bin/bash

#set -x

# --------------------------
# Fragt den Blogeintrag ab
# und speichert die Eingabe
# --------------------------

# --------------------------
# lade die Umgebung
#source ../CONFIG
# erzeugt aktuellen Timestamp
Timestamp=$(date +'%Y%m%d%H%M%S')
# holt den Nutzernamen
PostUser=$USER
ID=${PostUser}${Timestamp}
# --------------------------

# Daten erfassen
echo "Neuer Post (ID: $ID)"
echo "----------------------------"
read -p "Titel: " title
read -p "tl;dr: " tldr
read -p "Blogpost: " blogpost
read -p "reply to: " replyto
read -p "Tags (comma separated): " tags

# schreibe separate Files pro Variable
echo $title > ${TMPPath}/title.tmp
echo $tldr > ${TMPPath}/tldr.tmp
echo $blogpost > ${TMPPath}/blogpost.tmp
echo $replyto > ${TMPPath}/replyto.tmp
echo $tags > ${TMPPath}/tags.tmp
echo $ID > ${TMPPath}/timestamp.tmp

# schreibe tmp-Post-File
echo "###TITEL: $title " > ${TMPPath}/post.tmp
echo "###TLDR:  $tldr " >> ${TMPPath}/post.tmp
echo "###TEXT:  $blogpost " >> ${TMPPath}/post.tmp
echo "###REPLY: $replyto " >> ${TMPPath}/post.tmp
echo "###TAGS:  $tags ">> ${TMPPath}/post.tmp
echo "###ID:    $tms ">> ${TMPPath}/post.tmp

# schreibe tmp Post nach posts
#mv ${TMPPath}/post.tmp ${PostPath}/${tms}.post

exit 0
