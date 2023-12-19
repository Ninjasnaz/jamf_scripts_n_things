#!/bin/sh

#This attribute returns the number of charge cycles logged on the current battery


echo "<result>$(ioreg -r -c "AppleSmartBattery" | grep -w "CycleCount" | awk '{print $3}' | sed s/\"//g)</result>"
