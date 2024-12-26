# Shell Scripting Bug: Filename Handling

This repository demonstrates a common error in shell scripting when dealing with filenames that contain spaces. The script `bug.sh` attempts to process a list of files, but it fails if any of the filenames contain spaces because of incorrect quoting in the for loop.

The solution, `bugSolution.sh`, shows the correct way to handle filenames with spaces using proper quoting to prevent word splitting.

## Bug Description
The `bug.sh` script has a flaw in its file processing loop. If a filename has spaces, the shell splits it into multiple arguments, leading to unexpected behavior or errors. The `process_file` function then receives incorrect parameters.

## Solution
The `bugSolution.sh` script uses proper quoting ("$file") within the `for` loop to prevent the shell from splitting filenames with spaces into multiple arguments. This ensures that the `process_file` function receives the correct filename as a single argument.