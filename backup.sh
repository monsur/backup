#!/bin/zsh
BACKUP_SRC_DIR="/Users/monsur"
BACKUP_DEST_DIR="/Volumes/BACKUP/_BACKUPS/MonsurMacbookPro"
rsync -avzn --delete $BACKUP_SRC_DIR/Pictures/ $BACKUP_DEST_DIR/Pictures
