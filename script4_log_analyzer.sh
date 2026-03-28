#!/bin/bash  # Use Bash shell to execute the script

# Script 4: Log File Analyzer
# Author: Leon Paul Malayil
# Description: Counts keyword occurrences in a log file

LOGFILE=$1                 # Take log file name as first argument
KEYWORD=${2:-"error"}     # Take keyword as second argument (default = "error")
COUNT=0                   # Initialize counter

if [ ! -f "$LOGFILE" ]; then   # Check if file exists
    echo "Error: File $LOGFILE not found."   # Show error message
    exit 1                                   # Exit script with error
fi

if [ ! -s "$LOGFILE" ]; then   # Check if file is empty
    echo "File is empty. Retrying in 2 seconds..."   # Inform user
    sleep 2                                          # Wait for 2 seconds
fi

while IFS= read -r LINE; do   # Read file line by line
    if echo "$LINE" | grep -iq "$KEYWORD"; then   # Check if line contains keyword (case-insensitive)
        COUNT=$((COUNT + 1))   # Increment counter
    fi
done < "$LOGFILE"   # Input file for loop

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"   # Display total count

echo ""   # Print empty line
echo "Last 5 matching lines:"   # Heading for matches

grep -i "$KEYWORD" "$LOGFILE" | tail -5   # Show last 5 lines containing keyword
