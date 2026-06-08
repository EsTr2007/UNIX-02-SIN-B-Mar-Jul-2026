#!/bin/bash 
# This script will ping any address provided as an argument. 
SCRIPT_NAME="${0}"  
TARGET="${1}"  
echo "Running the script ${SCRIPT_NAME}..." 
echo "Pinging the target: ${TARGET}..." 
ping -c 3 "${TARGET}"

echo "The arguments are: $@"
echo "The total number of arguments are: $#"

bash -x ping_with_arguments.sh 127.0.0.1 127.0.0.1 127.0.0.1

for args in "$@"; do
 echo "${args}"
done