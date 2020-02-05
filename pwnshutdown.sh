#!/bin/bash
# This should point to the pivoyager executable
PIVOYAGER=/usr/local/bin/pivoyager

#  - Enable automatic power on once USB power is restored.
#  - Enable to powerup rPi every 6:00AM
#  - Program full power cut in 25 seconds.
#  - Shutdown rPi
$PIVOYAGER enable power-wakeup
$PIVOYAGER alarm *-23-00-00
$PIVOYAGER watchdog 25
sudo shutdown now
