#!/bin/bash
#Specifies that the script must be executed using the Bash interpreter.

#Assigns the first argument passed to the script to the variable NAME
NAME="${1}"
#Assigns the second argument passed to the script to the variable DOMAIN.
DOMAIN="${2}"
#Defines the hardcoded name of the CSV file where results will be written.
OUTPUT_FILE="results.csv"

# Check if the two expected arguments are set
#Checks if either NAME or DOMAIN is empty using the -z flag; if true, the script prints an error and exits.
if [[ -z "${NAME}" ]] || [[ -z "${DOMAIN}" ]]; then
  #Prints an error message indicating that both arguments are required.
  echo "You must provide two arguments to this script."
  #Prints a usage example using $0, which expands to the name of the script itself.
  echo "Example: ${0} mysite nostarch.com"
  #Terminates the script with exit code 1, signaling that it ended due to an error.
  exit 1
fi

# Write CSV header to the file
#Writes the CSV header row to the output file, overwriting any existing content with the > operator.
echo "status,name,domain,timestamp" > ${OUTPUT_FILE}

#Sends a single ICMP packet to the domain (-c 1) and discards all output; the condition is true if the host responds.
if ping -c 1 "${DOMAIN}" &> /dev/null; then
#Appends a success row to the CSV including the name, domain, and current timestamp using the >> operator.  
  echo "success,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
#Handles the case where the ping received no response from the domain.
else
#Appends a failure row to the CSV including the name, domain, and current timestamp using the >> operator.  
  echo "failure,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
#Closes the if/else block.
fi