#!/bin/bash

# Define the paths to the two text files
file1="./v1.txt"
file2="./v2.txt"

# Create v2 file for compare v1 file
cd ./ && terraform plan > v2.txt


# Check if both files exist
if [ ! -f "$file1" ]; then
  echo "Error: $file1 not found."
  exit 1
fi

if [ ! -f "$file2" ]; then
  echo "Error: $file2 not found."
  exit 1
fi

# Perform the comparison using the 'diff' command
if diff "$file1" "$file2" >/dev/null; then
  echo "No Manual Changes."
else
  echo "Something has been changed manually so I am running  reapply in the console according to the state file."
  cd ./ && terraform init && terraform apply -auto-approve
fi
