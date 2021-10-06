#!/bin/sh
# 20172256 Youhoseong Linux Assignment 3


if [ $# -ne 2 ]; then
	echo "Argument Count must be 2."
	exit 1
fi


row=$1
col=$2
re="^[0-9]+$"


if [ $row =~ $re ]; then
  echo "number"
else
  echo "not number"
fi





if [ $row -lt 1 ] || [ $col -lt 1 ]; then
	echo "Argument must be greater than 0."
	exit 1
fi


for i in `seq $row`
do
	for j in `seq $col`
	do
		echo -n "$i*$j=`expr $i \* $j`\t"

	done

	echo 
done

exit 0
