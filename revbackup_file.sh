#!/bin/bash
echo "please enter a file_name to backup : /n"
read file_name
timestamp= date +"%D.%m.%Y-%H.%M.%S"
cp  ${file_name} /tmp/archives/${file_name}.$timestamp
echo "The ${file_name} is backedup in /tmp/archives folder"