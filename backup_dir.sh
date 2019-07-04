#!/bin/bash
echo "please enter the directory name which you want to enter : \n"
read directory_name
timestamp= date +"%D.%m.%Y-%H.%M.%S"
cp -r ${directory_name} /tmp/archives/${directory_name}.$timestamp
echo "The $directory_name is stored in /tmp/archives folder"