#!/bin/bash

timestamp= date +"%m%d%y%h%m%s"
cp ${file_name} /tmp/archives/${file_name}.$timestamp
echo "the ${directory_name} in which the ${file_name} exists is backed up in /tmp/archives"




script arg1 arg2 arg3

$1 -- stores the first argument arg1
$2 -- stores the second argument arg2
$3 -- stores the thirds  arg3
$n --- stores the nth argument
$#  -- number of argument
$*   ---  list of all arguments 
$@  ---	  list of all arguments encloused   

---- find the corresponding centos or ubuntu machine to try $*   ---  list of all arguments 
$@  ---	  list of all arguments encloused   


----







conditionals

if

--------
comaprision operators:



-------------------

Issues in the script:

#!/bin/sh
# Author: Santhosh
# Description: This script takes file name as first argument and directory name wher ethe file exists as second argume t and backup_directory as third argument  backup the#file in backup folder
#usage: backup_file_args.sh file_name directory_name backup_directory


file_name=${1}
directory_name=${2}
backup_directory=${3}
timestamp=`date +%y%m%d-%H%M%s`
echo "The file name entered is ${file_name} and the directory name entred is ${directory_name}"
cp ${directory_name}/${file_name} ${backup_directory}/backup_${timestamp}_${file_name}
echo "The file ${file_name} in directory ${directory_name} is copied to backup directory /tmp/archives with name ${file_name}.${timestamp}"



-------------------------------------------------------------
1. This script runs even you have less or more than 3 arguments
    --- if you more or less  than 3 arguments script should 
        exit with message stating script only needs 3 arguments
    compare you no of arguments --- comparing integers

 
 whtehr the arguments provided are not null
 -- compare the strings --

2.The script doesnt validate whether the files or folders exists or not
	---- if the file name and folders should exists if not throw an message satting that ypu fodler doest exist and quit
        
        --validate folder and file comaprisions

3.The script doesnt validate whether the input provided is a file or folder
  ---if its file then got ot cp command if it folder got cp -r command
      --validate folder and file comaprisions
   
4.This script is ot compatible to backup directories


5. Thi script prints the echo statments which is there irrespective of the sattus of script
             -- based on comparision of intgers and folder and file permissions and 

6. The script show irrevalnt messgaes


7. The script wont exit if it has invalid inputs or invaid operations

    - relevant messages based on errors




9. Once the copy file operation is completed make sure that the operation is successful and print message accordingl
         if copy is successful $? will be 0
         	if copy not successful $? will be non zero

8. Check permission of file

----------------------------------------

multiple comparison operation:


integer Comparisoon operators
 
 -eq
 -ne
 -gt
 -lt
 -ge
 -le
string Comparision operators
   =
   !=
   -z 
   -n

file  comparision operators

-e 
-f
-d
-r
-w
-x
-n
-------------

