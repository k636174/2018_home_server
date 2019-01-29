#!/bin/bash

# Variable
TARGET_HOST=bkr.k636174.net
TARGET_USER=k636174
DEST_DIR=/home/k636174/Backup/`hostname`/
SOURCE_DIR=/home/localadm/`hostname`

# CREATE DIRECTORY
mkdir -p $SOURCE_DIR/server_status/
chown -R localadm:localadm $SOURCE_DIR

# Server Status
ps -ef > $SOURCE_DIR/server_status/`hostname`_`date +%Y%m%d_%H-%M-%S`.txt

# SophosXG Config Backup
find $SOURCE_DIR -type f -mmin -60 -exec scp '{}' $TARGET_USER@$TARGET_HOST:$DEST_DIR ';'
