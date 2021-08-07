#!/bin/bash

Yellow='\e[1;33m'
NC1='\e[0m'


#Ali Zanjani - 6/8/21 - MegaMenu including while loop and colour text codes. 

./passwordcheck.sh

if [ $? -eq 0 ];then
while :;
do
    echo -e "${Yellow}1 create a folder:${NC1}"
    echo -e "${Yellow}2 copy a folder:${NC1}"
    echo -e "${Yellow}3 set a password:${NC1}"
    echo -e "${Yellow}4 calculator:${NC1}"
    echo -e "${Yellow}5 create week folders:${NC1}"
    echo -e "${Yellow}6 check file names:${NC1}"
    echo -e "${Yellow}7 download a file:${NC1}"
    echo "8 exit"

read useroption

case $useroption in

1)
    ./foldermaker.sh
    ;;

2)

    ./foldercopier.sh
    ;;

3)

    ./setPassword.sh
    ;;


4)  

    ./calculator.sh
    ;;

5)    

    ./megafoldermaker.sh
    ;;

6)

    ./filenames.sh
    ;;

7)
   
    ./downloader.sh
    ;;

8)  
    break;
    ;;
*)
    #echo "Incorrect selection"
    #exit 1
    ;;

esac
done
fi