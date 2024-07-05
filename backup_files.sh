#!/bin/bash

   # Directory to back up
   SOURCE_DIR="/home/brad/brad_linux"

   # Backup destination
   BACKUP_DIR="/home/brad"

   # Create a timestamp
   TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

   # Create the backup file name
   BACKUP_FILE="$BACKUP_DIR/brad_linux_backup_$TIMESTAMP.tar.gz"

   # Print start status message
   echo "Starting backup of $SOURCE_DIR to $BACKUP_FILE"

   # Perform the backup using tar
   tar -czf $BACKUP_FILE $SOURCE_DIR

   # Print end status message
   echo "Backup completed successfully!"
