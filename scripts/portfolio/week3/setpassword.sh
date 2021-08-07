#!/bin/bash

#Ali Zanjani 25/7/21 setting the password and saving within a folder within a hash file
echo "enter folder name"
read foldername fold_var 
mkdir $foldername

read -sp 'Enter Password' pass_var
echo $pass_var | sha256sum > ./$foldername/secret.txt