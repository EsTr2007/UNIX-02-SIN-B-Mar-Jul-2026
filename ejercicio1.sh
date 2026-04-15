echo '#!/bin/sh' > hola.sh #You create a new file called hola.sh and add the Shebang (the header that tells the system it is a script).
echo 'echo "Hola desde mi primer script"' >> hola.sh #Add a second line to the same file with the command to print the greeting. Use >> to avoid overwriting what we did in the previous step.
cat hola.sh #Open the file in the terminal to read it and confirm that the two lines are there.
./hola.sh #Try "launching" the file so it can do its job.

ls -l hola.sh #List the file with details. At the beginning we will see something like -rw-r--r--, which indicates that it has read and write permission, but the x is missing.
chmod +x hola.sh #It grants execution permission. This is the switch that turns a simple text file into a program that the system can run.
ls -l hola.sh #Check again. You'll now see that the permissions have changed to something like -rwxr-xr-x, and in many terminals, the filename will change color to indicate that it's now executable.
./hola.sh #The script starts and we will see the message on the screen: "Hello from my first script".