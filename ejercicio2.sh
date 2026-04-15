touch prueba.txt #This creates an empty file called test.txt. By default, most systems will assign it permissions as -rw-r--r-- (644), which means you can read/write, but others can only read.
chmod 600 prueba.txt #Change the permissions to Read/Write Only for the owner.
ls -l prueba.txt #The ls -l command is fundamental in Unix/Linux systems because it transforms a simple list of names into a detailed X-ray of your files.
chmod 755 prueba.txt #You changed the file to be Publicly Executable. This is common for scripts or programs.
ls -l prueba.txt #List the file and view the permissions there are