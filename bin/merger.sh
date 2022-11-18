#!/bin/bash

#set -x

#source ../CONFIG
#  Aufraeumen
rm -f ${HTMLPath}/inhalt
rm -f ${HTMLPath}/oben
rm -f ${HTMLPath}/unten
rm -f ${HTMLPath}/index


# Inhalt mergen
for j in ${HTMLPath}/*
do
  cat $j >> ${HTMLPath}/inhalt
done

# Template rueberkopieren
cp -fp ${TemplatePath}/oben ${HTMLPath}/oben
cp -fp ${TemplatePath}/unten ${HTMLPath}/unten
chmod 770 ${HTMLPath}/*

# Files zusammenfuehren
cat ${HTMLPath}/oben >> ${HTMLPath}/index
cat ${HTMLPath}/inhalt >> ${HTMLPath}/index
cat ${HTMLPath}/unten >> ${HTMLPath}/index

# fertiges File moven
mv ${HTMLPath}/index ${MyPath}/index.html

