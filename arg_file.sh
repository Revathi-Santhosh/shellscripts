#!/bin/bash
#Author : Revathi Lalam
##Description :File name it takes input as an argument and backup the file in given folder.
###Usage : arg_file.sh
file_name=$1
timestamp=`date +"%m-%d-%y-%H-%M-%S"`
cp ${file_name} /tmp/revathi_archives/${file_name}.${timestamp}
echo "The ${file_name} is backed up in /tmp/revathi_archives folder"
