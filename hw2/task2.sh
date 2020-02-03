#!/bin/sh
echo please enter the line!
read -r line
enil=$(echo "$line" | rev)
if [ "$line" = "$enil" ]
then
        echo "YES"
else
        echo "NO"
fi
