#!/bin/bash

echo "Enter the directory_name in which the file exists : \n"
read directory_name
echo "Enter the file_name : /n"
read file_name
timestamp=`date +"%M.%D.%Y-%HH.%MM.%SS"`
cp  ${directory_name}/${file_name} /tmp/revathi_archives/${file_name}.${timestamp}
echo "the ${directory_name} in which the ${file_name} exists is stored in /tmp/revathi_archives/ folder"