#!/bin/bash

# Check if the user provided a directory to backup
if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/directory"
  exit 1
fi

# Create a backup of the specified directory
SOURCE_DIR=$1
BACKUP_DIR="$SOURCE_DIR-$(date +%Y%m%d%H%M%S).bak"

echo "Backing up $SOURCE_DIR to $BACKUP_DIR..."

cp -r "$SOURCE_DIR" "$BACKUP_DIR"

echo "Backup completed."
