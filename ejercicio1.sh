echo '#!/bin/sh' > hola.sh #You create a new file called hola.sh and add the Shebang (the header that tells the system it is a script).
echo 'echo "Hola desde mi primer script"' >> hola.sh #Add a second line to the same file with the command to print the greeting. Use >> to avoid overwriting what we did in the previous step.
cat hola.sh #Open the file in the terminal to read it and confirm that the two lines are there.
./hola.sh #Try "launching" the file so it can do its job.