#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Leon Paul Malayil
# Description: Checks Linux Kernel version and prints description

PACKAGE="kernel"

KERNEL_VERSION=$(uname -r)

if [ -n "$KERNEL_VERSION" ]; then
    echo "Linux Kernel is installed."
    echo "Version: $KERNEL_VERSION"
    echo "License: GPL v2"
else
    echo "Linux Kernel not found."
fi

case $PACKAGE in
    kernel)
        echo "Linux Kernel: core of the OS that connects hardware and software"
        ;;
    git)
        echo "Git: distributed version control system"
        ;;
    python)
        echo "Python: high-level programming language"
        ;;
    apache)
        echo "Apache: open-source web server"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
