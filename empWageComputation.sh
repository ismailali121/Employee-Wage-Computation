#!/bin/bash -x
isFullTime=2
isPartTime=1
maxHrsInMonth=10
ratePerHour=20
noOfWorkingDays=20

totalEmpHrs=0
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $maxHrsInMonth
                                 && $totalWorkingDays -lt $noOfWorkingDays ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        case $empCheck in
                $isFullTime)
                        empHrs=8;;
                $isPartTime)
                        empHrs=4;;
                *)
                        empHrs=0;;
        esac
        totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($totalEmpHrs*$ratePerHour))
