#!/bin/bash

   # Directory to monitor
   MONITOR_DIR="/home/brad"

   # Threshold percentage for disk usage
   THRESHOLD=80

   # Get the current disk usage percentage of the directory
   USAGE=$(df -h "$MONITOR_DIR" | awk 'NR==2 {print $5}' | sed 's/%//')

   # Check if the usage exceeds the threshold
   if [ "$USAGE" -gt "$THRESHOLD" ]; then
       echo "Alert: Disk usage of $MONITOR_DIR is at ${USAGE}%"
   else
       echo "Disk usage of $MONITOR_DIR is within safe limits at ${USAGE}%"
   fi
