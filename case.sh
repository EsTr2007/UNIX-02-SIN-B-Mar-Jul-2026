#!/bin/bash

# SCRIPT: case_ip_address_check.sh
# DESCRIPTION: Evaluates an IP address using wildcards within a case statement.

# 1. VARIABLE ASSIGNMENT
# '${1}' retrieves the very first argument passed to the script via the command line.
IP_ADDRESS="${1}"

# 2. CASE EVALUATION
# The script evaluates the string stored inside '${IP_ADDRESS}' against multiple patterns.
case ${IP_ADDRESS} in

    # 3. PATTERN MATCHING FOR 192.168.x.x
    # The '*' acts as a wildcard, matching any characters that follow '192.168.'.
    192.168.*)
        echo "Network is 192.168.x.x"
        ;; # Double semicolons terminate this specific pattern block.

    # 4. PATTERN MATCHING FOR 10.0.x.x
    # Matches any IP address that begins strictly with '10.0.'.
    10.0.*)
        echo "Network is 10.0.x.x"
        ;;

    # 5. DEFAULT FALLBACK PATTERN
    # The solitary '*' matches absolutely anything else if previous patterns fail.
    *)
        echo "Could not identify the network"
        ;;

esac # 6. END OF CASE BLOCK ('case' spelled backward)
