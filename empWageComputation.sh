#!/bin/bash -x
isPresent=1
employeeCheck=$((RANDOM%2))

if [ $isPresent -eq $employeeCheck ];
then
        echo "Employee is Present"
else
        echo "Employee is Absent"
fi

