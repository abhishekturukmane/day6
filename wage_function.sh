#!/bin/bash -x

function calculateWorkingHours(){
	case $1 in
		0)
		workingHours=0
		;;
		1)
		workingHours=4	
		;;
		2)
		workingHours=8
		;;
	esac ;
	echo $workingHours;
}

perHourSalary=20;
totalSalary=0;
totalWorkingHour=0;
day=1;

	while [[ $day -le 20 && $totalWorkingHour -lt 40 ]]
	do
		whours=$(  calculateWorkingHours $((RANDOM%3)));
		totalWorkingHour=$(($totalWorkingHour + $whours));
		if [ $totalWorkingHour -gt 40 ]
		then
			$totalWorkingHour=$(($totalWorkingHour - $whours));
			break;
		fi
		salary=$(($perHourSalary * $whours));
		totalSalary=$(($totalSalary + $salary));
		((day++));

	done
	echo "Employee has earned $totalsalary $totalSalary in a month (total working hours: $totalWorkingHour)";


