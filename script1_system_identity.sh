#!/bin/bash  # Use Bash shell to execute the script

# Script 1: System Identity Report
# Author: Leon Paul Malayil
# Description: Displays system details like kernel version, user, uptime, etc.

STUDENT_NAME="Leon Paul Malayil"   # Store student name
SOFTWARE_CHOICE="Linux Kernel"     # Store chosen software name

KERNEL=$(uname -r)                 # Get kernel version
USER_NAME=$(whoami)                # Get current logged-in user
UPTIME=$(uptime -p)               # Get system uptime (pretty format)
DATE=$(date)                      # Get current date and time
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')  # Extract OS distribution name

echo "================================"   # Print separator line
echo " Open Source Audit — $STUDENT_NAME"  # Print report title with student name
echo "================================"   # Print separator line

echo "Software        : $SOFTWARE_CHOICE"  # Display selected software
echo "Distribution    : $DISTRO"           # Display Linux distribution
echo "Kernel Version  : $KERNEL"           # Display kernel version
echo "User            : $USER_NAME"        # Display current user
echo "Home Directory  : $HOME"             # Display home directory path
echo "Uptime          : $UPTIME"           # Display system uptime
echo "Date & Time     : $DATE"             # Display current date and time
echo "License         : GNU General Public License v2 (GPLv2)"  # Display license info

echo "================================"   # Print ending separator
