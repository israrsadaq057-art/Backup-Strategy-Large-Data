#!/bin/bash
# Simple Backup Script
REPO="/home/srar_adaq/backup-lab/repo"
SOURCE="/home/srar_adaq/backup-lab/data"
BACKUP_NAME="backup-$(date +%Y-%m-%d_%H-%M-%S)"
LOG_FILE="/home/srar_adaq/backup-lab/logs/backup.log"

echo "$(date) - Starting backup" >> $LOG_FILE

# Run backup - it will ask for passphrase interactively
borg create --stats $REPO::$BACKUP_NAME $SOURCE

echo "$(date) - Backup completed" >> $LOG_FILE
