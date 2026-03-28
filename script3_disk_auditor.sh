#!/bin/bash  # Use Bash shell to execute the script

# Script 3: Disk and Permission Auditor
# Author: Leon Paul Malayil
# Description: Displays directory size, owner, and permissions

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")  # List of directories to audit

echo "Directory Audit Report"   # Print report title
echo "----------------------"   # Print separator

for DIR in "${DIRS[@]}"; do   # Loop through each directory in the list
    if [ -d "$DIR" ]; then   # Check if directory exists
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')   # Get permissions, owner, and group
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)         # Get directory size (hide errors)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"  # Display details
    else
        echo "$DIR does not exist"   # Print message if directory is missing
    fi
done

echo ""   # Print empty line for readability
echo "Checking Kernel-related directory..."   # Section header

KERNEL_DIR="/boot"   # Define kernel-related directory

if [ -d "$KERNEL_DIR" ]; then   # Check if /boot exists
    PERMS=$(ls -ld $KERNEL_DIR | awk '{print $1, $3, $4}')   # Get permissions, owner, group
    echo "$KERNEL_DIR => Permissions: $PERMS"   # Display kernel directory details
else
    echo "$KERNEL_DIR not found"   # Print message if directory not found
fi
