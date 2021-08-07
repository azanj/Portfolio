#!/bin/bash

#Ali Zanjani 28/7/21 - Calculator with Positional parameters

if [ $# -ne 3 ];then

echo "Invalid number of arguments"

exit 1

fi

case "$2" in

"+")

var=$(echo $(( $1 + $3)))
echo -e "\e[1;31m $var \e[0m"
;;

"-")

var=$(echo $(( $1 - $3)))
echo -e "\e[1;34m $var \e[0m"
;;

"X")

var=$(echo $(( $1 * $3)))
echo -e "\e[1;32m $var \e[0m"
;;

"/")

var=$(echo $(( $1 / $3)))
echo -e "\e[1;33m $var \e[0m"
;;

esac

exit 0