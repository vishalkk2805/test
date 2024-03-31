#!/bin/bash

# Define the paths to the two text files
file1="./v1.txt"
file2="./v2.txt"

# Check if both files exist
if [ ! -f "$file1" ]; then
  echo "Error: $file1 not found."
  exit 1
fi

if [ ! -f "$file2" ]; then
  echo "Error: $file2 not found."
  exit 1
fi

cd ./ && terraform plan > v2.txt

# Perform the comparison using the 'diff' command
if diff "$file1" "$file2" >/dev/null; then
  echo "No Manual Changes"
else
  echo ""
  cd ./ && terraform apply -auto-approve
fi
