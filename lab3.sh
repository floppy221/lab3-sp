#!/bin/bash

# Generate 5 random positive numbers
for ((i=1; i<=5; i++)); do
    echo $((RANDOM % 100 + 1)) >> numbers.txt
done

# Display the generated numbers
echo "Generated numbers:"
cat numbers.txt

# Find the smallest number
min=$(sort -n numbers.txt | head -n 1)

# Keep only the smallest number in the file
echo $min > numbers.txt

# Display the result
echo -e "\nResult after keeping only the smallest number:"
cat numbers.txt

# Clean up, remove temporary file
rm numbers.txt
