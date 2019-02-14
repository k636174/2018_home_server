#!/bin/sh

# Change script directory
SCRIPT_DIR=`dirname $0`
cd $SCRIPT_DIR

# Variable
. ./CONFIG.txt

# COPY CRON
if [ -e /var/spool/cron/ ]; then
  #CentOS
  $CRON_SOURCE_DIR=/var/spool/cron/
elif [ -e /usr/lib/cron/tabs/ ]; then
  #Mac
  $CRON_SOURCE_DIR=/usr/lib/cron/tabs/
else
    exit
fi


ls -alh $CRON_SOURCE_DIR

mkdir -p $DEST_DIR/cron/
cp -f $CRON_SOURCE_DIR* $DEST_DIR/cron/

# Git add&commit&push
cd $DEST_DIR
cd ../../
git pull
cd $DEST_DIR
git add -A
git commit -m "This push by cron(`hostname`)"
git ../../
git push
