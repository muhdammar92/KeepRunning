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
  - */5 * * * * /home/check-process.sh "run this script in every 5 minutes"




