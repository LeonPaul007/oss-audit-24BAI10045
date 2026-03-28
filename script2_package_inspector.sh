#!/bin/bash  # Use Bash shell to run the script

# Script 2: FOSS Package Inspector
# Author: Leon Paul Malayil
# Description: Checks Linux Kernel version and prints description

PACKAGE="kernel"   # Store the package name to inspect

KERNEL_VERSION=$(uname -r)   # Get the current Linux kernel version

if [ -n "$KERNEL_VERSION" ]; then   # Check if kernel version is not empty
    echo "Linux Kernel is installed."   # Print confirmation message
    echo "Version: $KERNEL_VERSION"     # Display kernel version
    echo "License: GPL v2"              # Display license information
else
    echo "Linux Kernel not found."      # Print message if kernel not found
fi

case $PACKAGE in   # Check value of PACKAGE variable
    kernel)
        echo "Linux Kernel: core of the OS that connects hardware and software"  # Description of kernel
        ;;
    git)
        echo "Git: distributed version control system"   # Description of Git
        ;;
    python)
        echo "Python: high-level programming language"   # Description of Python
        ;;
    apache)
        echo "Apache: open-source web server"   # Description of Apache
        ;;
    *)
        echo "Unknown package"   # Default case if no match found
        ;;
esac
