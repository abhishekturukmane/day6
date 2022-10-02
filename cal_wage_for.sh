#!/bin/bash -x

ispartTime=1;
isFullTime=2;
noofworkingdays=20;
empRatePerHour=20;
totalSalary=0;

for (( day=1;day<=20;day++ ))
do

	empcheck=$((RANDOM%3));
	case $empcheck in
			$ispartTime)
					empHrs=4;;
			$isFullTime)
					empHrs=8;;
				*)
					empHrs=0;
	esac


	salary=$(($empRatePerHour * $empHrs));
	totalSalary=$(($totalSalary + $salary));
done
