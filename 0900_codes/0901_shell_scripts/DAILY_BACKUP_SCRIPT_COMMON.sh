#!/bin/sh

# Change script directory
SCRIPT_DIR=`dirname $0`
cd $SCRIPT_DIR

# Variable
if [ -e "./CONFIG.txt" ]; then
  . ./CONFIG.txt
else
  cp ./CONFIG.txt.example ./CONFIG.txt
  . ./CONFIG.txt
fi


# COPY CRON
if [ -e "/var/spool/cron/" ]; then
  #CentOS
  CRON_SOURCE_DIR=/var/spool/cron/
elif [ -e "/var/spool/cron/crontabs/" ]; then
  #Debian
  CRON_SOURCE_DIR=/usr/lib/cron/tabs/
elif [ -e "/usr/lib/cron/tabs/" ]; then
  #Mac
  CRON_SOURCE_DIR=/usr/lib/cron/tabs/
else
    exit
fi

mkdir -p $DEST_DIR/cron/
cp -f $CRON_SOURCE_DIR* $DEST_DIR/cron/

# Git add&commit&push
cd $DEST_DIR
cd ../../
git pull
cd $DEST_DIR;ls -alh;git add ./*;git commit -m "This push by cron(`hostname`)";git status
