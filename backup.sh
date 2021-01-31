#!/bin/zsh
BACKUP_SRC_DIR="/Users/monsur"
BACKUP_DEST_DIR="/Volumes/BACKUP/_BACKUPS/MonsurMacbookPro"
rsync -avz --delete --exclude '.DS_Store' $BACKUP_SRC_DIR/Desktop/ $BACKUP_DEST_DIR/Desktop
rsync -avz --delete --exclude '.DS_Store' $BACKUP_SRC_DIR/Documents/ $BACKUP_DEST_DIR/Documents
rsync -avz --delete --exclude '.DS_Store' $BACKUP_SRC_DIR/Movies/ $BACKUP_DEST_DIR/Movies
rsync -avz --delete --exclude '.DS_Store' $BACKUP_SRC_DIR/Music/ $BACKUP_DEST_DIR/Music
rsync -avz --delete --exclude '.DS_Store' $BACKUP_SRC_DIR/Pictures/ $BACKUP_DEST_DIR/Pictures
