
#!/bin/bash

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
      echo "Honeymap is not running at " $(date) > /var/log/keep_running.log
      /var/www/honeymap/server/server > /dev/null 2>&1 &
fi

# check if geoloc is running or not
if ps aux | grep "[g]eoloc.py" > /dev/null
then
  echo "Geoloc.py is Running in background mode"
else
    echo "Geoloc is not running at " $(date) > /var/log/keep_running.log
    
    python  /opt/hpfeeds/examples/geoloc/geoloc.py > /dev/null 2>&1 &
fi

done

