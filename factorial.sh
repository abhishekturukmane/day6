#!/bin/bash -x

read -p "enter a no :" no;
fact=1;
for((i=2 ;i<=no;i++))
do
	fact=$((fact * i));
done
echo "$fact"
