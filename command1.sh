#!/bin/bash
#author: Revathi Lalam
##Description: create a file in which you have to list out the commands and then read the commands and the output should be saved in afile
####usage :./commands.sh

if [ $? -eq 0 ]
then 

	echo "list the content in the file output.txt and read each line"
    cat output.txt | while read l ; do echo "${l}" ; echo /################################ ; done

else
	echo "The given command is not correct"
fi   