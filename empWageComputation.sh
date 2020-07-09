#!/bin/bash -x
isFullTime=2
isPartTime=1
maxHrsInMonth=4
ratePerHour=20
noOfWorkingDays=20

totalEmpHrs=0
totalWorkingDays=0;

function getWorkHrs(){
        local empCheck=$1
        case $empCheck in
                $isFullTime)
                        empHrs=8;;
                $isPartTime)
                        empHrs=4;;
                *)
                        empHrs=0;;
        esac
        echo $empHrs
        #totalEmpHrs=$(($totalEmpHrs+$empHrs))
}

function getEmpWage () {
        local empHr=$1
        echo $(($empHr*$ratePerHour))
}
while [[ $totalEmpHrs -lt $maxHrsInMonth
                                 && $totalWorkingDays -lt $noOfWorkingDays ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        empHrs="$( getWorkHrs $empCheck )"
        totalEmpHrs=$(($totalEmpHrs+$empHrs))
        dailyWage[$totalWorkingDays]="$( getEmpWage $empHrs )"
done

totalSalary=$(($totalEmpHrs*$ratePerHour))
echo ${dailyWage[@]}
