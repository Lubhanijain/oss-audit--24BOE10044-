#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Lubhani Jain | Course: Open Source Software
# Alias example: alias manifesto="bash script5.sh"

echo "=========================================="
echo "   OPEN SOURCE MANIFESTO GENERATOR"
echo "=========================================="
echo "Answer three questions to generate your manifesto."
echo ""

# --- User Input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Date and Output File ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Generate Manifesto ---
echo "------------------------------------------" > $OUTPUT
echo "        MY OPEN SOURCE MANIFESTO" >> $OUTPUT
echo "        Generated on: $DATE" >> $OUTPUT
echo "------------------------------------------" >> $OUTPUT
echo "I believe that tools like $TOOL empower innovation and accessibility." >> $OUTPUT
echo "For me, freedom means '$FREEDOM', which drives creativity and collaboration." >> $OUTPUT
echo "In the future, I aim to build $BUILD and share it openly with the world." >> $OUTPUT
echo "Open source is not just technology, but a philosophy of transparency and community." >> $OUTPUT

# --- Display Output ---
echo ""
echo "Manifesto saved to $OUTPUT"
echo "------------------------------------------"
cat $OUTPUT
