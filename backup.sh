#!/bin/zsh
BACKUP_SRC_DIR=""
BACKUP_DEST_DIR=""
rsync -avzn --delete $BACKUP_SRC_DIR/Pictures/ $BACKUP_DEST_DIR/Pictures
