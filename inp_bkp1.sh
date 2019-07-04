#!/bin/bash
##Author : Revathi Lalam
###Description : Given two arguments the first argument as file or directory or link file and the second  argument as backup dir name 
#and the second argument as backup directory name and the output should be given input should be backed up in backup directory name.
### Usage : ./inp_bkp.sh arg1 arg2

input_name=$1
backup_dir=$2
args=$#
timestamp=`date "+%d-%m-%y-%H-%M-%S"`
if [ $args -ne 2 ] 
then
	echo "The arguments  that are to be  provided are only two"
	exit 
else 
	if [ -z ${input_name} ] || [ -z  ${backup_dir} ]
	then
		echo "one of the given input is null"
		exit
	else	

		if [ -d ${backup_dir} ]
		then

            if [ -f ${input_name} ]
	    	then
		   	    cp ${input_name} ${backup_dir}/${input_name}.${timestamp}.bkp
			elif [ -d ${input_name} ]
			then
	  	   		cp ${input_name} ${backup_dir}/${input_name}.${timestamp}.bkp
			elif [ -L ${input_name} ]
			then
		   		cp ${input_name} ${backup_dir}/${input_name}.${timestamp}.bkp
			else
		 		echo "the given input is neither file or directory or link file"
		    fi
	else
		    mkdir ${backup_dir}
		    if [ -f ${input_name} ]
	    	then
		   	    cp ${input_name} ${backup_dir}/${input_name}.${timestamp}.bkp
			elif [ -d ${input_name} ]
			then
	  	   		cp ${input_name} ${backup_dir}/${input_name}.${timestamp}.bkp
			elif [ -L ${input_name} ]
			then
		   		cp ${input_name} ${backup_dir}/${input_name}.${timestamp}.bkp
			else
		 		echo "the given input is neither file or directory or link file"
		    fi
	    fi	    

	fi
fi	
