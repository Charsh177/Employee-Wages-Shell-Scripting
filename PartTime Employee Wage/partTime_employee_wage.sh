#! /bin/bash

isPartTime=1;
empRatePerHr=20;
empHrs=4;

randomCheck=$(( RANDOM%2 ))

if (( $randomCheck == $isPartTime ))
then
	salary=$(( $empRatePerHr*$empHrs ))

	echo "Employee is Present"
	echo "Employee Wages is" $salary
else
	echo "Employee is absent"
	echo "Employee Wages is zero"
fi
