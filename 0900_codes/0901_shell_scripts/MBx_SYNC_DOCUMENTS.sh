#!/bin/bash

# SET crond
# * * * * *       ~/Desktop/Projects/Documents/0900_codes/0901_shell_scripts/RSYNC_DOCUMENTS.sh >> /dev/null
#% brew install unison                                                                                                                            [~/Desktop/Projects/Documents]+[master]
#Updating Homebrew...
#==> Downloading https://homebrew.bintray.com/bottles/unison-2.51.2.mojave.bottle.tar.gz
######################################################################## 100.0%
#==> Pouring unison-2.51.2.mojave.bottle.tar.gz#
#🍺  /usr/local/Cellar/unison/2.51.2: 9 files, 3.4MB
#k636174@judgement-2(0:39:14) ~/Desktop/Projects/Documents
#%   

# Variable
DEST_DIR=~/Desktop/Nextcloud/Project3-5/Documents
SOURCE_DIR=~/Desktop/Projects/Documents

# create dir
mkdir -p $DEST_DIR

# SYNC Nextcloud dir
rsync -av $SOURCE_DIR/0* $DEST_DIR
rsync -av $SOURCE_DIR/*.md $DEST_DIR
rsync -av $SOURCE_DIR/book.* $DEST_DIR
