#!/bin/bash
#write a script to print the location of the file & filename , inode number  
#and size of the file in the given location and store the output in excel file
#inputs: location name 
#outputs: location of the file filename inodenumber size


location_name=$1
find ${location_name} -type f -printf "%f\t %h\t %i\t %s\n"
if [ $? -eq 0 ]
then 
	echo "The name of the files along with inode number and size has been printed succesfully"
else
							       echo "The given path has failed"
fi
