#!/bin/bash -x

function palindrome(){

	while [ $temp != 0 ]
	do
		rem=$((temp%10));
		rev=$((rev*10+rem));
		temp=$((temp/10));
	done
	if [ $rev -eq $n ]
	then
		echo "The number is palindrome"
	else
		echo "The number is not a palindrome"
	fi
}

function prime(){

	flag=0;
	for((i=2;i<=$((num-1));i++))
	do
		if [ $((num%i)) == 0 ]
		then
			flag=$((flag+1));
		fi
	done

	if [ $flag -eq 0 ]
	then
		echo "$num is a prime number";

	else
		echo "$num is not a prime number";
	fi
}

function palin_prime(){

	while [ $temp != 0 ]
	do
		rem=$((temp%10));
		rev=$((rev*10+rem));
		temp=$((temp/10));
	done

	if [ $rev -eq $p ]
	then
		echo "$p is a palindrome number";
		flag=0;
		for((i=2;i<=$((p-1));i++))
		do
			if [ $((p%i)) == 0 ]
			then
				flag=$((flag+1));
			fi
		done

		if [ $flag -eq 0 ]
		then
			echo "$p is a prime number";
		else
			echo "$p is not a prime number ";
		fi
	else
		echo "$p is not a palindrome number";
	fi

}
read -p "Enter the number of function you want to execute : 1.Palindrome 2.Prime 3.palindrome_is_prime_or_not:" x

 case $x in
		1)
		 read -p "enter the number to check for palindrome:" n
        	rev=0;
        	rem=0;
	        temp=n;

		$(palindrome $((temp)));
		;;

		2)
		read -p "enter the no to check it is prime or not :" num;
		$(prime)
		;;

		3)
		read -p "enter the num to check first it is palindrome or not:" p;
		rev=0;
		rem=0;
		temp=p;
		$(palin_prime $((temp)))
		;;

		*)
		echo "Invalid number";
		;;
esac
