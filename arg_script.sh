#!/bin/bash
#Author : Revathi Lalam
#Description: The script takes arguments that are passed as input and provides the output.
##usage : ./arg_script.sh 
echo "Arguments which are passed are $*"
echo "arguments entered into the script are $@"
echo "No of arguments passed is $#"
echo "Script name is : $0"
echo "First argument is : $1"
echo "Second argument is : $2"