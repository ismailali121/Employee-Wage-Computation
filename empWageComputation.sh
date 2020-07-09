#!/bin/bash -x
isFullTime=2
isPartTime=1
totalSalary=0
ratePerHour=20
noOfWorkingDays=20

for((day=1;day<=$noOfWorkingDays;day++))
do
        empCheck=$((RANDOM%3))
        case $empCheck in
                $isFullTime)
                        empHrs=8;;
                $isPartTime)
                        empHrs=4;;
                *)
                        empHrs=0;;
        esac
        salary=$(($empHrs*$ratePerHour))
        totalSalary=$(($totalSalary+$salary))
done
