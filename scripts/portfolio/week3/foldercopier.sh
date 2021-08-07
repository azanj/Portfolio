#!/bin/bash 

#Ali Zanjani 25/7/21 Coping a folder to create a new folder 
      
read -p "Name of the folder you would like to copy: " folderName     
if [ -d "$folderName" ]; then     
read -p "Name of the destination folder: " NewFolderName     
cp -r "$folderName" "$NewFolderName"      
else     
echo "I couldn't find that folder"      
fi