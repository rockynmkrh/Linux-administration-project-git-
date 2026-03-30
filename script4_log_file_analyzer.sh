#!/bin/bash
# Script 4: Log File Analyzer
# Author: YADVENDRA RAJ YADAV
# Registration Number: 24BCE10366
# Course: Open Source Software
# Chosen Software: Git
#
# Purpose:
# This script reads a log file line by line, counts how many lines
# contain a keyword such as ERROR or WARNING, and prints a summary.
#
# Usage:
#   ./script4_log_file_analyzer.sh /path/to/logfile ERROR

LOGFILE="$1"
KEYWORD="${2:-ERROR}"
COUNT=0

echo "============================================================"
echo "                   LOG FILE ANALYZER                        "
echo "============================================================"

# Validate log file argument
if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 /path/to/logfile [KEYWORD]"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

echo "Log file : $LOGFILE"
echo "Keyword  : $KEYWORD"
echo "------------------------------------------------------------"

# Read the file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Total matching lines : $COUNT"
echo "------------------------------------------------------------"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "============================================================"
