#!/bin/bash
#!/bin/bash -x #Display the commands in real time
set -x #Enable trace mode

bash --version
env
echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}
ps -e -f
ps -ef
df --human-readable
#bash -r blackhatbash1.sh # -r For running restricted mode
#bash -n blackhatbash1.sh # -n Displays syntax errors, Debugging.
# bash -x blackhatbash1.sh # -x Enable verbose mode.