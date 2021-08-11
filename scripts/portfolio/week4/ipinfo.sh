
#!/bin/bash 
      
#Ali Zanjani 8/7/21 - Script to show the Ip and network information. 
      
net_info="$(ifconfig)" 
      
      
addresses=$(echo "$net_info" | sed -n '/inet / { 
      
s/inet/IP Address:/ 
      
s/netmask/\n\t\tSubnet Mask:/ 
      
s/broadcast/\n\t\tBroadcast Address:/ 
      
p 
      
}') 
      
echo -e "IP addresses on this computer are:\n$addresses" 
     