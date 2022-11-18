#!/bin/bash

#set -x

# ---------------------------
# Parst den Post nach html5
# ---------------------------

#source ../CONFIG

# ---------------------------

export OpenTagPost="<details>"
export CloseTagPost="</details>"

export OpenTagTitle="<summary>"
export CloseTagTitle="</summary>"

export OpenTagText="<p>"
export CloseTagText="</p>"
# ---------------------------

Title=$(cat ${TMPPath}/title.tmp)
Text=$(cat ${TMPPath}/blogpost.tmp)
Tldr=$(cat ${TMPPath}/tldr.tmp)
Tags=$(cat ${TMPPath}/tags.tmp)

ID=$(cat ${TMPPath}/timestamp.tmp)
# ---------------------------

echo "$OpenTagPost" > ${HTMLPath}/$ID.html

#if [ "$Title" != "" ]; then
  HTMLTitle=${OpenTagTitle}${Title}${CloseTagTitle}
  echo "$HTMLTitle" >> ${HTMLPath}/$ID.html
#fi

HTMLText=${OpenTagText}${Text}${CloseTagText}
echo "$HTMLText" >> ${HTMLPath}/$ID.html

HTMLID=${OpenTagText}"Blogpost-ID:"${ID}${CloseTagText}
echo "$HTMLID" >> ${HTMLPath}/$ID.html

echo "$CloseTagPost" >> ${HTMLPath}/$ID.html

