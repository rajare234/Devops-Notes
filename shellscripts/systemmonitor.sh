#!/bin/bash

EMAIL="rajareddilinux@gmail.com"
HOSTNAME=$(curl -s ifconfig.me)

disk_usage=$(df -h | awk 'NR==2{print $5}' | sed 's/%//g')

ramusage=$(free -h | awk 'NR==2{print $3}' | sed 's/Mi//g') ramsize=$(free -h | awk 'NR==2{print $2}' | sed 's/Mi//g')
ramusage_percent=$((100 * ramusage / ramsize))

if [ $disk_usage -gt 20 ];
then
echo "!!!!!!The Disk USAGE has crossed 20% on the server $HOSTNAME" | mail -s "Disk Full, Remove Unwanted Files or Attach a new drive" $EMAIL

fi
