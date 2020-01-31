#!/bin/bash
# This should point to the pivoyager executable
PIVOYAGER=/usr/local/bin/pivoyager

  if timedatectl status | grep "System clock synchronized: yes";
  then
     $PIVOYAGER date sync
  elif timedatectl status | grep "System clock synchronized: no" && $PIVOYAGER status | grep "inits";
  then
     sudo date -s `$PIVOYAGER date`
  else
     #echo "update time!"
	 sudo systemctl restart systemd-timesyncd
  fi
