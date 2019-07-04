#!/bin/bash
v=`df -h | grep "^/dev/mapper/ubuntu--vg-root" | tr -s " " | cut -d " " -f5 | cut -d "%" -f1`
if [ $v -gt 30 ]
then
	echo " enough space is available"
elif [ $v -ge 10 ] && [ $v -le 20 ]	
	then
		echo "try to add more space as it is going to fill in future"
elif [ $v -ge 80 ] && [ $v -le 90 ]
	then 
	echo "add space quickly"
elif [ $v -gt 90 ] 
	then
	echo " triggger a mail to eveyone"
else
   echo "there is no particular file system statisfying the above condition"	
fi