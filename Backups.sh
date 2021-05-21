#!/bin/bash

echo -e "This script performs a backup of the files in your current folder:"
ls -1
DATA="$(date +%d.%m.%y.%H.%M)"
PASTA="/tmp/backup/$DATA"
echo -e "Creating a temporary folder ${PASTA}..."
mkdir -p ${PASTA} 2> /dev/null
echo -e "Copying the files (except the .zip) .. was"
cp $(ls | grep -v *.zip) $PASTA
echo -e "Now I'm compressing the files"
zip -r ./${DATA}.zip ${PASTA}/*
echo -e "deleting a temporary folder ${PASTA}..."
rm -r ${PASTA} 2> /dev/null
echo -e "Feito!"

