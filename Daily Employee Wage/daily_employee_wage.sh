#! /bin/bash

echo -e "Calculating employee daily wage"

isPresent=1;
randomCheck=$((RANDOM%2))

if [ $randomCheck -eq $isPresent ]
then
	empRatePerHr=20;
	empHrs=8;
	salary=$(( $empRatePerHr*$empHrs ))
else
	salary=0;
fi

echo "Daily Wage of an Employee is " $salary
