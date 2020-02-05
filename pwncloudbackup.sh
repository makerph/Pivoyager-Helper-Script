#!/bin/sh
DROPBOX=/home/pi/scripts/dropbox_uploader.sh

$DROPBOX upload /home/pi/pwnagotchi-backup.tar.gz $(date +%F_%R)-backup.tar.gz
