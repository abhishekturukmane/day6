#!/bin/bash -x

function palin(){


	while [ $temp != 0 ]
	do
		rem=$((temp%10));
		rev=$((rev*10+rem));
		temp=$((temp/10));
	done

	if [ $rev -eq $no ]
	then
		echo "palindrome number";
	else
		echo "Not a palindrome number";
	fi
}

read -p "Enter a number to check palindrome:" no;
num=no;
rev=0;
rem;
temp=num;

cal=$(palin $((temp)));


