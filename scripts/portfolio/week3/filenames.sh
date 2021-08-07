#!/bin/bash

#Ali Zanjani - 2/8/21 - A for loop that analyses he contents of a file

myfile="filenames.txt"


echo "Start!"
IFS=$'\n'

for i in $(cat < "$myfile");
do
echo "$i"
echo "Hello"
if [ -d "$i" ];then
echo "$i that's a directory";
else
if [ -f "$i" ];then
echo "$i That file exists";
else
echo "$i I don't know what that is!";
exit 1
fi
fi
done