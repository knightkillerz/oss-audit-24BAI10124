#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"
echo ""

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "" > "$OUTPUT"
echo "On $DATE, I believe that open source tools like $TOOL represent $FREEDOM." >> "$OUTPUT"
echo "In the future, I would like to build $BUILD and share it freely with others." >> "$OUTPUT"
echo "Open source encourages collaboration, innovation, and learning without barriers." >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo "----------------------------------"
cat "$OUTPUT"