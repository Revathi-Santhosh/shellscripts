#!/bin/bash
#Author:Revathi Lalam
#Description : it takes one argument as the file_name and checks if it is a file or not
###Usage : ./arg_if_else.sh
file_name=$1
args=$#
timestamp=`date +"%d-%m-%y.%H-%M-%S"`
if [ $args -ne 1 ]
then
	echo "The no of arguments entered is to be only one"
exit
else
	if [ -f $file_name ]
	then
		echo "The file name entered is ${file_name}"
		cp ${file_name} /tmp/backup_${timestamp}.${file_name}
		echo "The backup file is created in /tmp folder"
	fi
fi