#!/bin/bash

uptimeDays=`/usr/bin/uptime | grep days`

if [ ! "$uptimeDays" ]; then
  echo "<result>0</result>"
  exit 0
else
  daysTot=`/usr/bin/uptime | awk '{print $3}'`
  echo "<result>$daysTot</result>"
  exit 0
Fi
