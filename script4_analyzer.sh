#!/bin/bash
# Script 4: Log File Analyzer
# Author: Lubhani Jain | Course: Open Source Software

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

echo "=========================================="
echo "   Log File Analyzer"
echo "=========================================="
echo "Analyzing file: $LOGFILE"
echo "Keyword: $KEYWORD"
echo "------------------------------------------"

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Total occurrences of '$KEYWORD': $COUNT"
echo "------------------------------------------"

# Show last 5 matching lines
echo "Last matching entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
