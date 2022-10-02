#!/bin/bash -x

read -p "Enter a number:" n

flag=0;

for((i=2;i<=$((n/2));i++))
do
	if [ $((n%i)) == 0 ]
	then
		flag=$((flag+1));
	fi
done

if [ $flag -eq 0 ]
then
	echo "prime number";
else
	echo "not a prime number";
fi


