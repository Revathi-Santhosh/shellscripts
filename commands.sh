#!/bin/bash
timestamp=`date +"%d-%m-%y.%H-%M-%S"`

ls -lrt
if [ $? -eq 0 ]
then 
	 echo "${timestmap}: The listing of curent directory  ran succesfull" >> application.log
else
	echo "${timestmap}: The command ls -lrt failed" >> application.log
fi	

chmod 777 appl_file_
if [ $? -eq 0 ]
then 
	echo "${timestmap}: Read write execute permissions has been modified succesfully" >> application.log
else
	echo "${timestmap}: The command failed to modify the permissions" >> application.log
fi	

mkdir backup1
if [ $? -eq 0 ]
then
 	echo "${timestmap}: The backup directory has been created" >> application.log
else
	echo "${timestmap}: The command failed to create directory" >> application.log 
fi
