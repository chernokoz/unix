#!/bin/sh

read -p "Please enter the number: " num
echo "Your number is $num" 
if [ "$(($num % 2))" -eq 0 ]
then
    echo "EVEN"
else 
    echo "ODD"
fi
