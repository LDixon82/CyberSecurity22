#!/bin/bash
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

files=(	'/etc/passwd' '/etc/shadow' )

echo -e "\nThe permissions for sensitive /etc files: \n" >> ~/research/sys_info.txt
for file in ${files[@]}
do
	ls -l $file >> ~/research/sys_info.txt
done

#Display CPU usage
echo -e "\nCPU Info:" >> ~/research/sys_info.txt
lscpu | grep CPU >> ~/research/sys_info.txt

#Display Disk usage
echo -e "\nDisk Usage:" >> ~/research/sys_info.txt
df -H | head -2 >> ~/research/sys_info.txt
