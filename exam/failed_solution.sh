#!/bin/sh



# while getopts "v" opt
# do
# case $opt in
# v) echo "v is on!"; flag="v";;
# esac
# done

flag=""
if [ -n "$1" ]
then
case "$1" in
-v) echo "Found the -v option"; flag="v"; shift ;;
*) echo "Without -v)";;
esac
fi




if [ -n "$flag" ]
then
echo "with v"
find . -name "*.zip" "$@" -exec sh -c "echo {}; echo "!"; unzip -Zt {} | awk '{print "\$3" }'; echo "!"; ls -l {} | awk '{print "\$5"}'; echo "?"" \; | awk 'BEGIN{FS="!"; RS="?"} {print $1, $3-$2}'
else
echo "without v"
find . -name "*.zip" "$@" -exec sh -c "unzip -Zt {} | awk '{print "\$3" }'; ls -l {} | awk '{print "\$5"}'; echo "-"" \; | awk 'BEGIN{FS=" "; RS="-"} {print $2-$1}' | awk '{s+=$1} END {print s}'
fi


# stat --printf="%s" file1.zip

# find . -name "*.zip" -exec sh -c "unzip -Zt {} | awk '{print "\$3" }'; ls -l {} | awk '{print "\$5"}'; echo "-"" \; | awk 'BEGIN{FS=" "; RS="-"} {print $2-$1}' | awk '{s+=$1} END {print s}'

# stat --printf="%s" file1.zip; 

# find . -name "*.zip" -exec sh -c "stat --printf="%s" file1.zip; echo -n "\0" unzip -Zt {} | awk '{print $3}'; echo -n "\0" " \; | awk 'BEGIN{FS=":"; OFS="-"} {print $1,$6,$7}'


# ls -s file1.zip | awk '{print $2}'


# if [ "$1" -eq "v" ]
# then
# echo eee
# fi


# echo $@
# find . -name "*.zip" "$@"

# find . -name "*.zip" -exec unzip -Zt {} \; | awk '{print $3-$6}' | awk '{s+=$1} END {print s}'




# find . -name "*.zip" -print0 | xargs -0 unzip -Zt

# find . -name "*1.zip" -print0 | xargs -0 unzip -Zt | awk '{print $3-$6, ""}'


# find . -name "*.zip" -exec echo "$(unzip -Zt | awk '{print $3-$6}')" 
# find . -name "*.zip" | xargs unzip -Zt | awk '{print $3-$6}'
# find . -name "*.zip"
# unzip -Zt file1.zip | awk '{print $3-$6}'
