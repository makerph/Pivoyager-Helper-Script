#!/bin/bash

  if timedatectl status | grep "System clock synchronized: yes";  then
     pivoyager date sync
  else
     sudo date -s `pivoyager date`
  fi
done
