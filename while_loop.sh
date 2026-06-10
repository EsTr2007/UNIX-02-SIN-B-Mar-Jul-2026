#!/bin/bash
#Creates a variable named SIGNAL_TO_STOP_FILE.
#Its value is the filename "stoploop"
SIGNAL_TO_STOP_FILE="stoploop"
#Starts a loop that runs while the file does not exist.
#-f checks for a file, and ! negates the condition.
while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do
#Displays a message indicating that the file has not been found yet.
 echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..."
#Displays a message informing the user that another check will occur in 2 seconds.
 echo "Checking again in 2 seconds..."
#Pauses the script for 2 seconds before checking again.
 sleep 2
#Ends the while loop and returns to the condition check.
done
#Displays a message indicating that the file was found.
#The script then continues and exits.
echo "File was found! Exiting..."