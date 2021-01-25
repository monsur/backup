#!/bin/zsh
BACKUP_SRC_DIR=""
BACKUP_DEST_DIR=""
rsync -avz --delete $BACKUP_SRC_DIR/Pictures/ $BACKUP_DEST_DIR/Pictures
