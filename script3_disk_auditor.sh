#!/bin/bash
# Script 3: Disk and Permission Auditor
# Name: Anjali Patni
# Description: Displays disk usage and permissions of important directories.

directories="/home /etc /var /tmp"

for dir in $directories
do
    echo "Directory: $dir"

    echo "Disk Usage:"
    du -sh $dir 2>/dev/null

    echo "Permissions (Owner Group):"
    ls -ld $dir | awk '{print $1, $3, $4}'

    echo "-----------------------------"
done
