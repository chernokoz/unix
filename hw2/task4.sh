#!/bin/sh

while getopts "i:o:" opt
do
 case "$opt" in
  i)
    dir1=$OPTARG
    ;;
  o)
    dir2=$OPTARG
    ;;
  *)
    echo "ERROR"
    ;;
  esac
done

if [ -z "$dir1" ] || [ -z "$dir2" ]
then
	echo "ERROR!"
fi

find "$dir1" -type f -executable -exec cp -r '{}' "$dir2" \;
echo "Happy End. Ok."
