#!/bin/bash
#Author:Revathi Lalam
#Description : it takes one argument as the input_name and checks if it is a file or not
###Usage : ./arg_if_else.sh
status_check() {
	if [ $? -eq 0 ]
	 then
		 echo "The backup file is created in /tmp folder"
	 else
			echo "The bakup failed"
 	fi
}
backup_function() 
{
	if [ -f $input_name ]
		then
			echo "The file name entered is ${input_name}"
			cp ${input_name} ${backup_dir}/${input_name}_${timestamp}.bkp
			status_check
	elif [ -d $input_name ]
		then
			echo "The directory_name  entered is ${directory_name}"
			cp -r ${input_name} ${backup_dir}/${input_name}_${timestamp}.bkp
			status_check
			echo "The backup file is created in /tmp folder"
		elif [ -L $input_name ]
	then
		echo "The given argument is ${link_file}"
		cp ${input_name} ${backup_dir}/${input_name}_${timestamp}.bkp
		status_check
		echo "The backup file is created in /tmp folder"
	else
		echo "The given argument is not a file or directory or link_file"
	fi	
}
input_name=$1
backup_dir=$2
args=$#
timestamp=`date +"%d-%m-%y.%H-%M-%S"`
if [ $args -ne 2 ]
then
	echo "The no of arguments entered shoeuld be 2  first argument is   afilename directory name or link file and second argument is backup directpry name"
     exit
else
	if [ -z $file_name ]  || [ -z $backup_dir ]
	then
		echo " The file name or directory name provided are null . Please provide proper values"
		exit
	else
		if [ -d $backup_dir ]
			then
			backup_function a
	    else
	    	mkdir -p ${backup_dir}
	    	backup_function

	  	fi	
	fi
fi