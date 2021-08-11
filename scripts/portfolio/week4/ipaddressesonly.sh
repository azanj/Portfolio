#!/bin/bash 
      
#ALi Zanjani - 10/7/21 - Only show IP infomation from the ipinfo.sh 
      
Info_var="$(./ipinfo.sh)" 
  
      
Addresses=$(echo "$Info_var" | sed -n '/IP Address: / {  
s/Ip Adress/IP Adress:/ 
s/IP Adress/IP Adress:/ 
p   
}')
      
echo -e "IP addresses on this computer are:\n$Addresses" 