#!/bin/bash
# Script 4: Log File Analyzer
# Name: Anjali Patni
# Description: Counts occurrences of a keyword in a log file.

if [ -z "$1" ]; then
    echo "Usage: $0 <logfile>"
    exit 1
fi

file=$1
count=0

echo "Enter keyword to search (e.g., ERROR):"
read keyword

while read line
do
    if echo "$line" | grep -q "$keyword"; then
        count=$((count+1))
    fi
done < "$file"

echo "Total occurrences of '$keyword': $count"
