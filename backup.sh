#!/bin/zsh
BACKUP_SRC_DIR="/Users/monsur"
BACKUP_DEST_DIR="/Volumes/BACKUP/_BACKUPS/MonsurMacbookPro"
RSYNC_FLAGS="-avz --delete --exclude '.DS_Store'"
rsync $RSYNC_FLAGS $BACKUP_SRC_DIR/Desktop/ $BACKUP_DEST_DIR/Desktop
rsync $RSYNC_FLAGS $BACKUP_SRC_DIR/Documents/ $BACKUP_DEST_DIR/Documents
rsync $RSYNC_FLAGS $BACKUP_SRC_DIR/Movies/ $BACKUP_DEST_DIR/Movies
rsync $RSYNC_FLAGS $BACKUP_SRC_DIR/Music/ $BACKUP_DEST_DIR/Music
rsync $RSYNC_FLAGS $BACKUP_SRC_DIR/Pictures/ $BACKUP_DEST_DIR/Pictures
