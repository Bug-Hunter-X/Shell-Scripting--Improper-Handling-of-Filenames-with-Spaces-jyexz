#!/bin/bash

# This script attempts to process a list of files, but it contains a subtle error.

files=("file1.txt" "file2.txt" "file3.txt")

for file in $files; do
  echo "Processing: $file"
  # The problem is here: if any filename contains spaces, it will be split into multiple arguments
  process_file "$file"
done

process_file() {
  echo "Processing file: $1"
  # Simulate some file processing
  sleep 1
}
