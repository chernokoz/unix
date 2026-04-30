#!/bin/bash
#readarray array < "$1"
array=()
# IFS= and -r preserve whitespace and backslashes in each line
while IFS= read -r line
do
	array+=("$line")
done < "$1"

size=${#array[*]}

# insertion sort: shift elements right until correct position is found
for((i=1;i<size;i++))do
	j=$i-1
	temp=${array[$i]}
	while((j>=0 && array[j]>temp))
	do
		array[$j+1]=${array[$j]}
		j=$j-1
	done
	array[j+1]=$temp
done

for((i=0;i<size;i++))
do
	echo "${array[$i]}"
done
