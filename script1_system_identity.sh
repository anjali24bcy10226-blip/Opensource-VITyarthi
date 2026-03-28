#!/bin/bash
# Script 1: System Identity Report
# Name: Anjali Patni
# Description: Displays system information like OS, user, uptime, and license.

echo "========== WELCOME TO LINUX =========="

os_name=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f2)
kernel=$(uname -r)
user=$(whoami)
home_dir=$HOME
uptime=$(uptime -p)
current_time=$(date)

echo "OS: $os_name"
echo "Kernel Version: $kernel"
echo "User: $user"
echo "Home Directory: $home_dir"
echo "Uptime: $uptime"
echo "Date & Time: $current_time"

echo "License: GNU General Public License (GPL)"

echo "======================================"
