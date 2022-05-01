wage_per_hr=20
max_hrs=100
max_days=20
total_working_hrs=0
total_working_days=0
while(( total_working_hrs < max_hrs && total_working_days < max_days ))
do
    (( total_working_days++ ))
    emp_attendence=$(( RANDOM % 3 ))
    case $emp_attendence in
        0)
            echo "Employee is absent"
            no_of_hrs_per_day=0
            ;;
        1)
            echo "Employee is full time present"
            no_of_hrs_per_day=8
            ;;
        2)
            echo "Employee is part time present"
            no_of_hrs_per_day=4
            ;;
    esac
        (( total_working_hrs += no_of_hrs_per_day ))

done

total_salary=$(( total_working_hrs * wage_per_hr ))
echo "Total salary is $total_salary"
