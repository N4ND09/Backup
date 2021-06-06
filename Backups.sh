#!/bin/bash

echo -e "This script performs a backup of the files in your current folder:"
ls -1
DATE="$(date +%d.%m.%y.%H.%M)"
PAST="/tmp/backup/$DATE"
echo -e "Creating a temporary folder ${PAST}..."
mkdir -p ${PAST} 2> /dev/null
echo -e "Copying the files (except the .zip) .. was"
cp $(ls | grep -v *.zip) $PAST
echo -e "Now I'm compressing the files"
zip -r ./${DATE}.zip ${PAST}/*
echo -e "deleting a temporary folder ${PAST}..."
rm -r ${PAST} 2> /dev/null
echo -e "NICE!"

