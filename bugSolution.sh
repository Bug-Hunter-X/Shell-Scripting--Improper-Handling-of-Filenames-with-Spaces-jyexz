#!/bin/bash

# This script demonstrates the correct way to process a list of files,
# even if some filenames contain spaces.

files=("file1.txt" "file2.txt" "file3.txt" "file with spaces.txt")

for file in "$files[@]"; do
  echo "Processing: $file"
  process_file "$file"
done

process_file() {
  echo "Processing file: $1"
  # Simulate some file processing
  sleep 1
}
