#!/bin/sh
# Please provide the complete path of the file name so taht it can take backup for file in any location 
echo "Please enter a file name to take backup: \n"
read file_name
timestamp=`date  +"%m%d%y%H%M%S"`
cp ${file_name} /root/archives/${file_name}.$timestamp
echo "The file ${file_name} is backeud up in archives folder /root/archives/"




root@ruby-on-rails:~# vi backup_file.sh
#!/bin/sh
echo "Please enter the directory in which the file exists to take backup \n"
read directory_name
echo "Please enter a file name to take backup: \n"
read file_name
timestamp=`date  +"%m%d%y%H%M%S"`
cp ${directory_name}/${file_name} /root/archives/${file_name}.${timestamp}
echo "The file ${file_name}in directory ${directory_name} is backed up in archives folder /root/archives/"



script runs 

even you prvide a file or directory or a file name or dirname which doesnt exist
if its directory it will fail and still sbows success message
if its directory the copy command should be different
message is shown all timestamp



fle1	


will 

conditionals
loops
regex may be