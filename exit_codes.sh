#!/bin/bash
# Experimenting with exit codes
ls -l > /dev/null
echo "The exit code of the ls command was: $?"
lzl 2> /dev/null
echo "The exit code of the non-existing lzl command was: $?"

# Sets the exit code of the script to be 223
echo "Exiting with exit code: 223"
exit 223