#!/bin/bash -x

echo "Enter value of n:"n 
read  n;

for((i=1;i<=n;i++))
do
	value=$((2*$i));
	echo "2 * $i = $value"   ;
done
