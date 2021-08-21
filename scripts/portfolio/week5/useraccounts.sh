#!/bin/bash

#Ali Zanjani 21/7/21 - Script with table filltering the data from /etc/passwd that has /bin/bash. 
awk -F: '$7~/\/[b][a-z][a-z]\/[b][a-z][a-z][a-z]/' /etc/passwd |
awk -F":" '
BEGIN {printf "%-8s %28s %-3s %-1s %20s\n" , "| \033[34mUsername\033[0m" , "| \033[34mUserID\033[0m |" , "\033[34mGroupID\033[0m" , "| \033[34mHome                     \033[0m" , "| \033[34mShell             \033[0m |"
print "|___________________|________|_________|___________________________|____________________|"
}
{printf("| \033[33m%-17s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-25s\033[0m | \033[33m%-18s\033[0m |\n", $1, $3, $4, $6, $7); }' 