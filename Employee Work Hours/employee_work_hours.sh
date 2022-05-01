#! /bin/bash

get_work_hrs ()
{
    emp_attendence=$1
     case $emp_attendence in
        0)
            no_of_hrs_per_day=0
            ;;
        1)
            no_of_hrs_per_day=8
            ;;
        2)
            no_of_hrs_per_day=4
            ;;
     esac
	echo $no_of_hrs_per_day
}

wage_per_hr=20
max_hrs=100
max_days=20
total_working_hrs=0
total_working_days=0
while(( total_working_hrs < max_hrs && total_working_days < max_days ))
do
    (( total_working_days++ ))
    emp_attendence=$(( RANDOM % 3 ))
    no_of_hrs_per_day=$( get_work_hrs $emp_attendence)
    (( total_working_hrs += no_of_hrs_per_day ))

done

total_salary=$(( total_working_hrs * wage_per_hr ))
get_work_hrs

echo "Total salary is $total_salary"



