#!/bin/bash

# ფაილის შესამოწმებლად
LOG_FILE="/home/gita/7.log"
OUTPUT_FILE="/home/gita/script.log"

# if-else სტრუქტურა
if [ -f "$LOG_FILE" ]; then
    # თუ 7.log არსებობს,
    CURRENT_DATETIME=$(date "+%Y-%m-%d %H:%M:%S")
    echo "Script executed on: $CURRENT_DATETIME" > "$OUTPUT_FILE"
    echo "7.log exists. script.log has been created with the current date and time."
else
    # თუ 7.log არ არსებობს
    echo "7.log does not exist. script.log was not created."
fi

