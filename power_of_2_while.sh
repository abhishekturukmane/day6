#!/bin/bash -x

read -p "Enter a value of n till we get 256 :" n
i=1;
while [ $i != 129 ]
do

	value=$((2*$i));
	echo "2 * $i = $value"
	i=$((i+1));
done
