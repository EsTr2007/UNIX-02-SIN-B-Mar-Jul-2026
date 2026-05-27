#View current main group 
id #Display real and effective user and groups IDs
id-gn #only the name of the main group
#Create a file and see which group inherits: 
touch~/test_inherited_group.txt
ls -la ~/test_grupo_heredado.txt
#The group is the user's primary group.

#View the current group
id -gn
echo "Grupo actual: $(id -gn)"
#Create a file before newgrp
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt

#Switch to developers group
newgrp desarrolladores
#Verify that the active group changed
id -gn
echo "Nuevo grupo activo: $ (id -gn)"

#Update the Alpine Linux package list and install the util-linux package with basic system tools.
sudo apk update && sudo apk add util-linux

# Create the new group in Alpine Linux
sudo addgroup desarrolladores # Creates a new system group named 'desarrolladores'
# Add the current user to the group
sudo adduser vscode desarrolladores # Adds the 'vscode' user to the 'desarrolladores' group
# Start a clean bash session preserving the environment using short flags
sudo -E setpriv --reuid=vscode --regid=1001 --init-groups /bin/bash # Spawns a bash shell with the new group ID while preserving the correct user HOME directory using the -E flag
# Verify that the active group changed
id -gn # Displays the current active primary group name
echo "Nuevo grupo activo: $(id -gn)" # Prints the confirmation message with the current group name
# Start a clean bash session forcing the desarrolladores group ID
sudo -E setpriv --reuid=vscode --regid=1001 --init-groups /bin/bash # Opens a new clean shell session forcing the 'desarrolladores' group ID
# Verify that the active group changed
id -gn # Displays the current active primary group name

#Create a file inside the subshell
touch ~/dentro_de_newgrp.txt
ls -la ~/dentro_de_newgrp.txt
# The group is now 'desarrolladores'
# Create a directory
mkdir -p ~/proyecto_dev/src
ls -la ~/

#project _dev/ has a 'desarrolladores' group
#Exit the newgrp subshell
exit
#Verify that we returned to the original group
id -gn
echo "Grupo restaurado: $(id -gn)"

#Compare the two files
ls -la ~/antes_de_newgrp.txt ~/dentro_de_newgrp.txt

#newgrp creates a subshell — this is demonstrable 
echo "PID del shell actual: $$"
newgrp desarrolladores
sudo -E setpriv --reuid=vscode --regid=1001 --init-groups
echo "PID dentro de newgrp: $$"
#The PID is different - it's a child process

#Create a password-protected group
sudo groupadd grupo_restringido
sudo gpasswd grupo_restringido
#The system will ask for a password for the group
