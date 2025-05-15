#!/bin/bash

# Old_files.sh
# Description:
# - Takes a directory path as input
# - Finds all files older than 7 days
# - Compresses them
# - Moves them to an archive directory
# - Logs all actions

# Usage: ./Old_files.sh /path/to/directory

DIR_SOURCE="$1" # Get the source directory from the first argument [ path/to/directory]
ARCHIVE_DIR="$DIR_SOURCE/archive" # Define the Archive directory
LOG_FILE="./archive_log_$(date +%F).log" # creates a log file with the current date and filename

# Checks if the source directory was provided

if [[ -z "$DIR_SOURCE" ]]; then
    echo "Usage: $0 /path/to/directory"
    exit 1
fi

# Create the archive directoy if it doesn't exist

mkdir -p "$ARCHIVE_DIR"

# Log the start directory if it doesn't alredy exist

echo "[$(date)] starting archive process for directory: $SOURCE_DIR" | tee -a "$LOG_FILE"

# Find all files in the source directory that are older than 7 days(excluding the archive directory)

find "$DIR_SOURCE" -type f -mtime +7 ! -path "$ARCHIVE_DIR/*" | while read -r file; do
      filename=$(basename "$file") # Extracts just the filename from the full path

      #Compress the file and move it to the archive directory, then delete the original file
      gzip -c "$file" > "$ARCHIVE_DIR/${filename}.gz" && rm "$file"

      # Log and display 

      echo "[$(date)] Archived: $file" -> $ARCHIVE_DIR/${filename}.gz | tee -a "$LOG_FILE"

done

#Log and display the completion of the process
echo "[$(date)] Archive prcess completed." | tee -a "$LOG_FILE"