#!/bin/bash
##Author : Revathi Lalam
###Description : we will provide two arguments that is file or dir or link and backup dir file name 
#the output is to be stored in backup dir.
###Usage : ./eq_null.sh
previouscmd_check() {
if [ $? -eq 0 ]
			   		 then
			   			echo "the given ${entry_name} is stored in ${backup_dir} folder"
			   		else
			   			echo "the given ${entry_name} is not stored in ${backup_dir} folder"
			   		fi 
			   	}

backupdir_func(){			   	
			   	if [ -f ${entry_name} ]
	    		then
		   	    	cp ${entry_name} ${backup_dir}/${entry_name}.${timestamp}.bkp
		   	    	previouscmd_check
				elif [ -d ${entry_name} ]
				then
	  	   			cp ${entry_name} ${backup_dir}/${entry_name}.${timestamp}.bkp
	  	   			previouscmd_check
				elif [ -L ${entry_name} ]
				then
			   		cp ${entry_name} ${backup_dir}/${entry_name}.${timestamp}.bkp
			   		previouscmd_check
					else
			 		echo "the given input is neither file or directory or link file"
			 	fi
			 }

entry_name=$1
backup_dir=$2
timestamp=`date "+%d-%m-%y-%H-%M-%S"`
args=$#
if [ $args -eq 2 ]
then

	if [ -z ${entry_name} ] || [ -z  ${backup_dir} ]
	then
		echo "one of the given input is null"
		exit
	else
		if [ -d ${backup_dir} ]
		then	
 				
 			backupdir_func

		else
		 	mkdir -p ${backup_dir}

		 	backupdir_func
		fi
	fi
		
else
 	echo "The script expects two arguments please provide two arguments"		
fi	 		
		    