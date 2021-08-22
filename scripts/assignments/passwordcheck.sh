#!/bin/bash

Blue='\e[1;34m'
NC1='\e[0m'

#Ali Zanjani 24/7/21 - Script to input password and confirm it is the same as the hash password stored 

printf "${Blue}Enter Secrect Password:${NC1}";read -s var_spass

var_hash=$(echo $var_spass | sha256sum)

hashfile="secret.txt"
myvariable=$(cat "$hashfile")


if [ "$var_hash" == "$myvariable" ];then
echo -e "\e[1;31m"Access Granted" \e[0m"
    
echo -e "\e[1;32m"Select An Option" \e[0m"
exit 0 

else 

echo "Access Denied" 
exit 1 
fi