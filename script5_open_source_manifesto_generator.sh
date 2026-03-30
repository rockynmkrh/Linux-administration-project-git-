#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: YADVENDRA RAJ YADAV
# Registration Number: 24BCE10366
# Course: Open Source Software
# Chosen Software: Git
#
# Purpose:
# This script asks the user three questions and generates a short
# open-source manifesto paragraph. The output is saved to a text file.

echo "============================================================"
echo "            OPEN SOURCE MANIFESTO GENERATOR                 "
echo "============================================================"
echo "Please answer the following questions."
echo

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE_NOW=$(date "+%d %B %Y")
OUTPUT_FILE="manifesto_$(whoami).txt"

# Compose the paragraph in a readable form.
MANIFESTO="On $DATE_NOW, I reflected on the value of open source. I use $TOOL regularly, and it reminds me that technology becomes more meaningful when it is open, shareable, and understandable. To me, freedom means $FREEDOM because users should have the power to study, improve, and adapt the tools they depend on. If given the opportunity, I would build and freely share $BUILD so that others can learn from it, improve it, and use it without unnecessary restrictions. Open source is not only a development model; it is a practical way of turning knowledge into something collective."

# Save the manifesto to the output file.
echo "$MANIFESTO" > "$OUTPUT_FILE"

echo
echo "Manifesto saved to: $OUTPUT_FILE"
echo "------------------------------------------------------------"
cat "$OUTPUT_FILE"
echo
echo "Note: In shell, aliases can shorten repeated commands, but this script"
echo "uses explicit commands for clarity and portability."
echo "============================================================"
