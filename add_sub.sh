#!/bin/bash

number1=$1
number2=$2


sum="$(( number1 + number2 ))"
substraction="$(( number1 - number2 ))"
multiplication="$(( number1 * number2 ))"
division="$(( number1 / number2 ))"


echo "The addition of ${number1} and ${number2} is ${sum}"
echo "The substraction of two numbers is ${substraction}"
echo "The multiplication of two numbers is ${multiplication}" 
echo  "The division of two numbers is ${division}"
