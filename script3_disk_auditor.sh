#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Leon Paul Malayil
# Description: Displays directory size, owner, and permissions

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking Kernel-related directory..."

KERNEL_DIR="/boot"

if [ -d "$KERNEL_DIR" ]; then
    PERMS=$(ls -ld $KERNEL_DIR | awk '{print $1, $3, $4}')
    echo "$KERNEL_DIR => Permissions: $PERMS"
else
    echo "$KERNEL_DIR not found"
fi
