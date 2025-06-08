#!/bin/bash

# Переменные
SRC_DIR="/home/dmitriy/projects/p2p-service"
BACKUP_DIR="/home/dmitriy/projects/p2p-service/backup"
TIMESTAMP=$(date "+%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="backup_$TIMESTAMP.tar.gz"

# Лог
echo "[$(date '+%F %T')] Начало резервного копирования" >> "$BACKUP_DIR/backup.log"

# Создание архива
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" -C "$SRC_DIR" .

# Проверка результата
if [ $? -eq 0 ]; then
  echo "[$(date '+%F %T')] Архив создан: $ARCHIVE_NAME" >> "$BACKUP_DIR/backup.log"
else
  echo "[$(date '+%F %T')] Ошибка при создании архива" >> "$BACKUP_DIR/backup.log"
fi

echo "[$(date '+%F %T')] Завершено" >> "$BACKUP_DIR/backup.log"

find "$BACKUP_DIR" -name 'backup_*.tar.gz' -mtime +3 -delete