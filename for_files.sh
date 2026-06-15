#!/bin/bash
#Loops through all files in the current directory starting with "example_file" and assigns each name to the variable file.
for file in example_file*; do
#Checks if the current file name is exactly equal to "example_file1".  
 if [[ "${file}" == "example_file1" ]]; then
#Prints a message to the terminal stating that the first file is being skipped. 
 echo "Skipping the first file"
#Skips the rest of the current loop iteration and moves directly to the next file. 
 continue
#Ends the conditional if statement block 
 fi
#Generates a random number and overwrites the contents of the current file with it. 
 echo "${RANDOM}" > "${file}"
#Ends the for loop block.
done