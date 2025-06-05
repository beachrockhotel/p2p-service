#!/bin/bash
rsync -av /etc/hosts ~/projects/p2p-service/backup/hosts.bak >> ~/projects/p2p-service/backup/backup.log
echo "[$(date)] Backup completed." >> ~/projects/p2p-service/backup/backup.log