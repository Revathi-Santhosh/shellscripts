####
#Author: Revathi lalam 
#Description: it take two inputs and performs arthermic operations
#Usage: ./scriptname.sh
#####
#!/bin/bash
echo "Enter the First value"
read number1
echo "Enter the second value"
read number2
sum="$(( number1 + number2 ))"
substraction="$(( number1 - number2 ))"
multiplication="$(( number1 * number2 ))"
division="$(( number1 / number2 ))"


echo "The addition of ${number1} and ${number2} is ${addition}"
echo "The substraction of two numbers is ${substraction}"
echo "The multiplication of two numbers is ${multiplication}" 
echo  "The division of two numbers is ${division}"
