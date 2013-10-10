# Written by Muhamad Ammar
# KeepRunning Project
# Bug reports welcome 
# email = muhd.ammar92@gmail.com

KeepRunning
===========

Check Dionaea,Honeymap and other processes whether their running or not. 


Why I create this script

- sometime i run script in background mode but the script suddenly stop running
- i'm very lazy to start all the script manually


Usage 

- edit the check-process
- check where is the location of your script
- you can use cron 
  - crontab -e 
  - @reboot /path/to/script
  - eg. @reboot /home/keep-running.sh


Addon
-logging system 
-location of log file /var/log/keep-running.log



