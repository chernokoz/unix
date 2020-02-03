#!/bin/sh
prev=$(curl -L https://vk.com/id347745 2>/dev/null | grep -o ">online")
if [ "$prev" = "" ]
then
	echo "Anton Mikhailovich is offline!" | wall
	echo "Anton Mikhailovich is offline!"
else
	echo "Anton Mikhaiovich is online!" | wall
	echo "Anton Mikhailovich is online!"
fi


while :
do	
now=$(curl -L https://vk.com/id347745 2>/dev/null | grep -o ">online")
if [ "$now" != "$prev" ]
then
	if [ "$now" = "" ]
	then
        	echo "Anton Mikhailovich is offline!" | wall
        	echo "Anton Mikhailovich is offline!"
	else
        	echo "Anton Mikhaiovich is online!" | wall
        	echo "Anton Mikhailovich is online!"
	fi
fi
prev=$now
sleep 60
done
