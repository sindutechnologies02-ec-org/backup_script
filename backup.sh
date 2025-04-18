#!/bin/bash

# Use your home directory
SOURCE_DIR="$HOME/mydata"
BACKUP_DIR="$HOME/backups"

# Create backup folder if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create a timestamp
TIMESTAMP=$(date +%F_%H-%M-%S)

# Archive the source directory
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" -C "$SOURCE_DIR" .

# Optional: Delete backups older than 7 days
find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;

echo "✅ Backup completed at $TIMESTAMP"

