#!/bin/bash

echo "---------------------------"
echo "Check all important process"
echo "---------------------------"
# Check if honeymap is running
if ps aux | grep "[s]erver" > /dev/null
then
  echo "Honeymap is Running in background mode"
  echo ""
else
      /var/www/honeymap/server/server > /dev/null 2>&1 &
fi

# check if geoloc is running or not
if ps aux | grep "[g]eoloc.py" > /dev/null
then
  echo "Geoloc.py is Running in background mode"
else
    python  /opt/hpfeeds/examples/geoloc/geoloc.py > /dev/null 2>&1 &
fi





