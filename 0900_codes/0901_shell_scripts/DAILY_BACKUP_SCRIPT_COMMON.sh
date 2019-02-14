#!/bin/sh

# Variable
DEST_DIR=/root/Documents/0910_settings/`hostname`/

# COPY CRON 
mkdir -p $DEST_DIR/cron/
cp -f /var/spool/cron/* $DEST_DIR/cron/

# Git add&commit&push
cd $DEST_DIR
cd ../../
git pull
cd $DEST_DIR
git add -A
git commit -m "This push by crontab(`hostname`)" 
git ../../
git push
