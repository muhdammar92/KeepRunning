#!/bin/bash
# Written by Muhamad Ammar
# KeepRunning Project
# Bug reports welcome 
# email = muhd.ammar92@gmail.com


counter=0

echo "---------------------------"
echo "Check all important process"
echo "---------------------------"


while [ $counter == 0 ]; do
# Check if honeymap is running

if ps aux | grep "[s]erver" > /dev/null
then
  echo "Honeymap is Running in background mode"
  echo ""
else
logger -s "Honeymap is not running $(date)" 2>> /var/log/keep_running.log 
      /var/www/honeymap/server/server > /dev/null 2>&1 &
fi

# check if geoloc is running or not
if ps aux | grep "[g]eoloc.py" > /dev/null
then
  echo "Geoloc.py is Running in background mode"
else
    logger -s "Geoloc is not running $(date)" 2>> /var/log/keep_running.log 

    python  /opt/hpfeeds/examples/geoloc/geoloc.py > /dev/null 2>&1 &
fi

done

