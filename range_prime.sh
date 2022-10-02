#!/bin/bash -x

temp=0;
for((no=1;no<=100;no++))
do
	for((i=2;i<=no-1;i++)) #j<=i-1 because it will itrate till i=99
	do
		if [ $((no%i)) == 0 ]
		then
			temp=$((temp+1));
		fi
	done


	if [ $temp -eq 0 ]
	then
		echo "The prime no is : $no";
	else
		temp=0;
	fi
done
