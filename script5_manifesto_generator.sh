#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Leon Paul Malayil
# Description: Generates a personalized open-source philosophy statement

echo "Answer the following questions:"
echo ""

read -p "1. Name a tool you use daily: " TOOL
read -p "2. What does freedom mean to you? " FREEDOM
read -p "3. What would you build and share? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "Open Source Manifesto - $DATE" > $OUTPUT
echo "" >> $OUTPUT
echo "I use $TOOL every day, which shows the importance of open-source software." >> $OUTPUT
echo "To me, freedom means $FREEDOM." >> $OUTPUT
echo "I believe in sharing knowledge, and I would build $BUILD for the community." >> $OUTPUT
echo "The Linux Kernel proves that collaboration can create powerful systems." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
