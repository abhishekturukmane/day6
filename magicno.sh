#!/bin/bash -x

read -p "Hey user , just think for a number and enter:" n
temp=$((n/2))
while [ $temp != $n  ]
do
	if [[ $n -lt $temp ]]
	then
		temp=$((temp-1));

	elif [[ $n -gt $temp ]]
	then
		temp=$((temp+1));

	elif [[ $n -eq $temp ]]
	then
		echo "it is equal now ";
		break;
	fi

done

echo "The magic number is : $n";
