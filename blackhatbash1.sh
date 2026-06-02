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
