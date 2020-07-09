#!/bin/bash -x
isFullTime=2
isPartTime=1
ratePerHour=20
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
