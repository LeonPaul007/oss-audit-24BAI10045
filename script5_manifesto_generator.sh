#!/bin/bash  # Use Bash shell to execute the script

# Script 5: Open Source Manifesto Generator
# Author: Leon Paul Malayil
# Description: Generates a personalized open-source philosophy statement

echo "Answer the following questions:"   # Prompt user
echo ""                                  # Print empty line

read -p "1. Name a tool you use daily: " TOOL        # Take user input for tool name
read -p "2. What does freedom mean to you? " FREEDOM # Take user input for meaning of freedom
read -p "3. What would you build and share? " BUILD  # Take user input for idea/project

DATE=$(date '+%d %B %Y')   # Get current date in readable format
OUTPUT="manifesto_$(whoami).txt"   # Create output filename using username

echo "Open Source Manifesto - $DATE" > $OUTPUT   # Write title to file (overwrite if exists)
echo "" >> $OUTPUT                              # Add empty line

echo "I use $TOOL every day, which shows the importance of open-source software." >> $OUTPUT  # Add statement
echo "To me, freedom means $FREEDOM." >> $OUTPUT   # Add user's view on freedom
echo "I believe in sharing knowledge, and I would build $BUILD for the community." >> $OUTPUT # Add contribution idea
echo "The Linux Kernel proves that collaboration can create powerful systems." >> $OUTPUT    # Add concluding line

echo ""   # Print empty line in terminal
echo "Manifesto saved to $OUTPUT"   # Inform user about saved file

cat $OUTPUT   # Display contents of the generated file
