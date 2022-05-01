attendence=$(( RANDOM % 3 ))
case $attendence in
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

wage_per_hr=20
wage_per_day=$(( wage_per_hr * no_of_hrs_per_day ))
no_of_days_per_month=20
wage_per_month=$(( wage_per_day * no_of_days_per_month ))
echo "The Wage of the employee for the month is $wage_per_month"
