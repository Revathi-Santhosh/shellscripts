#!/bin/bash
#Author : Revathi Lalam
##Description : passing arguments as the directory name and file name 
###Usage : ./arg_dir_file.sh
directory_name=$1
file_name=$2
mkdir /tmp/${directory_name}
touch /tmp/${directory_name}/${file_name}
echo "The ${file_name} which is stored in ${directory_name} is backed up in /tmp folder"