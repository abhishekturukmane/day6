#!/bin/bash -x

function reverse(){

	while [ $temp != 0 ]
	do
		rem=$((temp%10));
		rev=$((rev*10+rem));
		temp=$((temp/10));
	done


	echo "the reverse of $num is $rev";

}

read -p "enter a no:" no

num=no;
rev=0;
rem;
temp=num;

check=$(reverse $((temp)));
