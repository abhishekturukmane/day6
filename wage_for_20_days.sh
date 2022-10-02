#!/bin/bash -x

is_part_time=1;
is_full_time=2;
max_hrs_in_months=40;
emp_rate_per_hr=20;
num_working_day=20;

#variables

total_working_days=0;
total_emp_hrs=0;

#function

function getWorkHrs(){

	#local $empcheck=$1
	case $empcheck in
		$is_part_time)
			emphrs=4;;
		$is_full_time)
			emphrs=8;;
		*)
			emphrs=0;;
	esac
	echo $emphrs;
}

#function call and code to count total salary of employee

while [[ $total_emp_hrs -lt $max_hrs_in_months && $total_working_days -lt $num_working_day ]]
	do
		((total_working_days++));
		empcheck=$((RANDOM%3));
		emphrs="$( getWorkHrs $empcheck )"
		total_emp_hrs=$(($total_emp_hrs+$emphrs));
		#((total_working_days++));
	done

totalsalary=$(($emp_rate_per_hr*$total_emp_hrs));
