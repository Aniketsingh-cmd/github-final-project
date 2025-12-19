
#!/bin/bash

#this Script will take user input and then calculate Simple Interest ,
# p stands for Principal
# r stands for rate of interest
# t stands for time (In year or months however user wants)

# Author : Aniket Singh
# Github : Aniketsingh-cmd
# Sample Purpose Only
echo "--- Simple Interest Calculator ---"

read -p "Enter Principal amount: " p
read -p "Enter Rate of interest (per year): " r
read -p "Enter Time (in years): " t

interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc)
total=$(echo "scale=2; $p + $interest" | bc)

echo "Calculated Interest: $interest"
echo "Total Balance: $total"


