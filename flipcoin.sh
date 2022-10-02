#!/bin/bash -x
times=1;
#check=$((RANDOM%2))

while [ $times -le 11 ]
do
	check=$((RANDOM%2))
	if [ $check -eq 0 ]
	then
		echo "heads"
	else
		echo "tails"
	fi

	times=$((times+1));
done
