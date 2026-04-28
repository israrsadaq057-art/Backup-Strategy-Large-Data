#!/bin/bash
REPO="/home/srar_adaq/backup-lab/repo"
echo "========================================="
echo "     BACKUP STATUS"
echo "========================================="
echo "Date: $(date)"
echo ""
echo "Backups in repository:"
borg list $REPO
echo ""
echo "Repository info:"
borg info $REPO
