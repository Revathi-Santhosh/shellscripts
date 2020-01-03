#!/bin/bash
#To check the space of a particular file system and send a message if the used space is 
#below 50% then print enough space is available, used space is b/w 50-80% print try to add 
#more space as it is going to full in future if it b/w 80-90% print add space quickly, 
##above 90% triggger mail to every one
##inputs= variable v
##output=print enough space, trigger a mail
df -h | tr -s " " | cut -d " " -f1,5 | tail -n +2 | while read k

do
     diskspace=`echo "${k}" | cut -d " " -f1`
   	 percent=`echo "${k}" | cut -d " " -f2 | cut -d "%" -f1`
if [ $percent -lt 50 ]
then
	  echo " enough space is available"
elif [ $percent -ge 50 ] && [ $percent -le 80 ]	
then
	  echo "try to add more space as it is going to fill in future"
elif [ $percent -ge 80 ] && [ $percent -le 90 ]
then 
	  echo "add space quickly"
elif [ $percent -gt 90 ] 
then
	  echo "triggger a mail to eveyone"
else
      echo "there is no particular file system statisfying the above condition"	
fi 	
done	