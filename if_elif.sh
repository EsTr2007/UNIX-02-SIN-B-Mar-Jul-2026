#!/bin/bash
#Save the first argument you pass to the script in the USER_INPUT variable. The quotation marks prevent errors if the argument contains spaces.
USER_INPUT="${1}"
#Initiate a condition to check if the USER_INPUT variable is empty (zero length)
if [[-z "${USER_INPUT}"]]; then
#Displays an error message on the screen if the user did not provide any arguments.
 echo "You must provide an argument!"
#It completely stops the script execution and returns error code 1 to the system. 
  exit 1
#The first conditional block ends if  
  fi
#Start a new condition and use -f to check if the saved path is a regular file.
  if [[-f "${USER_INPUT}"]]; then
#It displays on the screen that the entered path corresponds to an existing file.   
   echo "${USER_INPUT} is a file."
#If it wasn't a file, use -d to check if the path corresponds to a directory (folder).
   elif [[-d "${USER_INPUT}"]]; then
#It prints on the screen that the entered path corresponds to an existing directory.  
    echo "${USER_INPUT} is a directory."
#Indicate the path to follow if the route does not meet any of the above conditions.
    else
#It prints that the path does not exist, or that it belongs to another type of element (such as a symbolic link). 
    echo "${USER_INPUT} is not a file or a directory."
#Close the second if-elif-else conditional block 
    fi