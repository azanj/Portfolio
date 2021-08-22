#!/bin/bash


Red='\e[1;31m'
Yellow='\e[1;33m'
NC1='\e[0m'


#Ali Zanjani - 6/8/21 - Ransomware awareness menu 

./passwordcheck.sh

if [ $? -eq 0 ];then
while :;
do
    echo -e "${Yellow}1 Countries with a high share of ransomware attacks & percenatge breakdown:${NC1}"
    echo -e "${Yellow}2 Industries being targeted by ransomeware:${NC1}"
    echo -e "${Yellow}3 Common types of ransomware:${NC1}"

    echo "4 exit"

read useroption

case $useroption in

 #Countries with the highet rates of ransomware attacks
1)
     grep "<li>" ./file.txt |  sed -n '155,165p' | sed 's/<[^>]*>//g'
    


echo -e "${Red}Maximum percentage of ransomware attacks${NC1}"
echo "9.57"

echo -e "${Red}Average percentage of ransomware attacks${NC1}"
echo "scale=2;(65.36/9)" | bc

echo -e "${Red}Minimum percentage of ransomware attacks${NC1}"
echo "3.22" 
    ;;


 #Types of industies being targeted by ransomware
2)

     grep "<li>" ./file.txt |  sed -n '41,48p' | sed 's/<[^>]*>//g' | sed 's/&#8211; /-/'
    ;;


 #Most common tpes of ransomware

3)

    grep "<li>" ./file.txt |  sed -n '112,119p' | sed 's/<[^>]*>//g' 
    ;;


4)  
    break;
    ;;
*)
    #echo "Incorrect selection"
    #exit 1
    ;;


esac
done
fi


#Refernces
#Geeks For Geeks (2021. July 15) Simple Calculator in Bash. https://www.geeksforgeeks.org/simple-calculator-bash/

#Microsoft. (n.d.). Calculate the average of a group of numbers. https://support.microsoft.com/en-us/office/calculate-the-average-of-a-group-of-numbers-e158ef61-421c-4839-8290-34d7b1e68283

#Purplesec. (n.d.) The growing threat of ransomware. https://purplesec.us/resources/cyber-security-statistics/ransomware/
