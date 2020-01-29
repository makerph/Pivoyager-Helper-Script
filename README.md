The purpose of this systemd timer is to make sure that the systemtime is always updated even internet is not available.
The key of this is a simple shell script that do the following:
Check if system time is in sync from NTP (Internet)
if it does, it will update the pivoyager RTC.
if not, system time will be updated from pivoyager RTC.
The Systemd timer will run 5 min after bootup then run every 15mins 

Installation:

Step 1 Save files to specific directory

Save pwntimecheck.sh to /home/pi
Save pwntimecheck.time and pwntimecheck.service to /etc/systemd/system/

Step 2 Enable systemd timer
 
 Need to make systemd aware of them by issuing
  #sudo systemctl daemon-reload
    
 After that you need to enable the timer unit:
  #sudo systemctl enable pwntimecheck.timer

To check:
  #systemctl list-timers --all 
