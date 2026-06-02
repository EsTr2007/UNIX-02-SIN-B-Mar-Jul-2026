#!/bin/bash
set -x

#All this script does is create a directory, create a file
#within the directory, and then list the contents of the directory.
mkdir mydirectory
touch mydirectory/myfile
ls -l mydirectory

set -x

#- Results 
#bash -n blackhatbash2.sh # No salio nada , no hay errores de sintaxis. Don't exists syntax errors.

#bash -x blackhatbash2.sh # Enable verbose mode.
# + mkdir mydirectory
# + touch mydirectory/myfile
# + ls -l mydirectory
#total 0
# -rw-rw-rw- 1 root root 0 jun  1 13:20 myfile

set -x 

set +x
# + set -x
# + mkdir mydirectory
#mkdir: cannot create directory ‘mydirectory’: El fichero ya existe
# + touch mydirectory/myfile
# + ls -l mydirectory
#total 0
# -rw-rw-rw- 1 root root 0 jun  1 13:21 myfile
# + set -x