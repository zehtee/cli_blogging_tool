#!/bin/bash

#set -x

# Initialisiert die Umgebung
# setzt Variablen, Pfade, etc.

rm -f CONFIG

#---------- Pfade -----------------
MyPath=$(pwd)
#MyPath=/home/hendrik/Documents/blogging
echo "export MyPath=$(pwd)" >> CONFIG

export BinPath=${MyPath}/bin
echo "export BinPath=${MyPath}/bin" >> CONFIG

export HTMLPath=${MyPath}/html
echo "export HTMLPath=${MyPath}/html" >> CONFIG

export PicPath=${MyPath}/pictures
echo "export PicPath=${MyPath}/pictures" >> CONFIG

export PostPath=${MyPath}/posts
echo "export PostPath=${MyPath}/posts" >> CONFIG

export TMPPath=${MyPath}/tmp
echo "export TMPPath=${MyPath}/tmp" >> CONFIG

export TemplatePath=${MyPath}/tmp
echo "export TemplatePath=${MyPath}/template" >> CONFIG

#---------- Cleanup --------------
rm -f ${HTMLPath}/*
rm -f index.html
