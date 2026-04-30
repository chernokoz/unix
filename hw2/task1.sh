#!/bin/sh

read -p "Please enter the number: " num
echo "Your number is $num"
# arithmetic expansion returns 0 for even, 1 for odd
if [ "$(($num % 2))" -eq 0 ]
then
    echo "EVEN"
else
    echo "ODD"
fi
