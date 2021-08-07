#!/bin/bash

#Ali Zanjani - 1/8/21 - Script to download website and save url to a directory
while :; 
do 
read -p "type website url to download or exit" url
if [ "$url" == "exit" ]; then 
break; 
fi

read -p "Input the directory where you wish to save: " directory

filename=$(eval echo $directory)

echo $filename

wget -P $filename $url
done