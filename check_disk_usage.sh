#!/bin/bash

TARGET_DIR=$1
LOG_FILE="change_log.txt"

touch $LOG_FILE

echo "Chnaged deleted in the last minute in $TARGET_DIR:" > $LOG_FILE
find "$TARGET_DIR" -type -f -mmin -1 >> $LOG_FILE

cat $LOG_FILE
