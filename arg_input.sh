#!/bin/bash
#Author:Revathi Lalam
##Description:It takes two arguments as input file or dir or link file name as first argument and the backup dir name as second argument and the output is that the given file or dir or link file should be backed up in given backup_dir name.
###Usage:./arg_input.sh arg! arg2
input_name=$1
backup_dir=$2
args=$#
timestamp=`date "+%d-%m-%s-%H-%M-%S"`

if [ $args -ne 2 ]
then
	echo "The arguments that are to be provided are only two"
	exit
else
	if [ -z $input_name ] || [-z $backup_dir ]
	then
		echo ""
		exit
	else
		if [ -d $backup_dir ]
			then		
				if [ -f $input_name ]
					then
						echo "The file name entered is  ${input_name}"
						cp ${input_name} ${backup_dir}/${input_name}_${timestamp}.bkp
				elif [ -d $input_name ]
					then
						cp -r ${input_name} ${backup_dir}/${input_name}_${timestamp}.bkp
				elif [ -L $input_name ]
					then
						cp -r ${input_name} ${backup_dir}/${input_name}_${timestamp}.bkp
				else
					echo "The input provided is neither file or dir or link file"
 				fi
 		else
 		 	echo "Backup dir ${backup_dir} does not exist creating the backup directory"
 			mkdir -p ${backup_dir}

			if [ -f $input_name ]
				then
					echo "The file name entered is  ${input_name}"
					cp ${input_name} ${backup_dir}/${input_name}_${timestamp}.bkp
			elif [ -d $input_name ]
				then
					cp -r ${input_name} ${backup_dir}/${input_name}_${timestamp}.bkp
			elif [ -L $input_name ]
				then
				cp -r ${input_name} ${backup_dir}/${input_name}_${timestamp}.bkp
			else
				echo "The input provided is neither file or dir or link file"
 	
 			fi
 		fi
 	fi
fi
