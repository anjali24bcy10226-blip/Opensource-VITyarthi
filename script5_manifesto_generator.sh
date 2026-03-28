#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Name: Anjali Patni
# Description: Generates a personalized open-source philosophy statement.

echo "What does open source mean to you?"
read meaning

echo "Why is sharing code important?"
read importance

echo "What is your favorite open-source tool?"
read tool

date_now=$(date)
output_file="manifesto.txt"

echo "----- Open Source Manifesto -----" > $output_file
echo "Date: $date_now" >> $output_file
echo "" >> $output_file
echo "Open source to me means $meaning." >> $output_file
echo "Sharing code is important because $importance." >> $output_file
echo "One tool I appreciate is $tool." >> $output_file

echo "Manifesto saved in $output_file"

# alias example (for demonstration)
# alias manifesto='cat manifesto.txt'
