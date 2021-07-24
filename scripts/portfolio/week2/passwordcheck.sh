#!/bin/bash

#Ali Zanjani 24/7/21 - Input password and confirm it is the same as the hash password stored 

read -sp 'Enter secret Password' var_spass
var_hash=$(echo $var_spass | sha256sum)

hashfile="secret.txt"
myvariable=$(cat "$hashfile")

echo "$var_hash"
echo "$myvariable"


if [ "$var_hash" == "$myvariable" ];then
echo "Access Granted"
exit 0 

else 

echo "Access Denied" 
exit 1 
fi