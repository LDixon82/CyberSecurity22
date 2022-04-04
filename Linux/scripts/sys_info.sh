#!/bin/bash

mkdir ~/research 2> /dev/null

echo "A Quick SYstem Audit Script"

date

echo " "

echo "Machine Type Info:"

echo $MACHTYPE

echo -e "Uname Info: $(uname -a) \n"

echo -e "IP Info: $(ip addr | head -9 | tail -1) \n"

echo "Hostname: $(hostname -s)"

echo -e "\n777 Files:" >> ~/research/sys_info.txt

find / -type f -perm 777 >> ~/research/sys_info.txt

echo -e "\nTop 10 Processes" >> ~/research/sys_info.txt

ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> ~/research/sys_info.txt
