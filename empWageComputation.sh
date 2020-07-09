#!/bin/bash -x
isPresent=1
employeeCheck=$((RANDOM%2))

if [ $isPresent -eq $employeeCheck ];
then
        ratePerHr=20
        employeeHours=8
        salary=$(($employeeHours*$ratePerHr))
else
        salary=0
fi
