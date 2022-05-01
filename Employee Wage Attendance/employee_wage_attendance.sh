#! /bin/bash

echo -e "Employee Wage Computation \n"

attend=$(( $RANDOM%2 ))
if (( $attend==0 ))
then
	echo "Employee is absent"
else
	echo "Employee is present"
fi
