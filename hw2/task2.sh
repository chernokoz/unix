#!/bin/sh
echo please enter the line!
read -r line
# rev reverses character order; compare reversed string to original to detect palindrome
enil=$(echo "$line" | rev)
if [ "$line" = "$enil" ]
then
        echo "YES"
else
        echo "NO"
fi
