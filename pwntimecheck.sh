#!/bin/bash
# This should point to the pivoyager executable
PIVOYAGER=/usr/local/bin/pivoyager

  if timedatectl status | grep "System clock synchronized: yes";  then
     $PIVOYAGER date sync
  else
     sudo date -s `$PIVOYAGER date`
  fi
done
