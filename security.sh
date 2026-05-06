id= #Displays the current user's UID (User ID), GID (Group ID), and groups.
cat /etc/passwd|head -10= #Reads the user account list and displays only the first 10 lines
cat /etc/group |head -10= #Is used to view the beginning of the system's group definition file.
groups= #Lists all the groups the current user belongs to.
groups $USER= #Specifically queries and lists the groups for the username stored in the environment variable $USER
id -u= #User ID
id -g= #Group ID principal
id -G= #Show others groups 
cat /etc/group|grep root= #Searches for the "root" group's details
cat /etc/gshadow= #Displays the secure, encrypted passwords and administrators for those groups.
mkdir ~/proyecto_unix/= #Creates a new directory named "proyecto_unix" in your home folder
ls -la ~/proyecto_unix/= #Lists all its contents (including hidden files) in a detailed long-format list.
# groupadd [options] group_name
# Create a simple group
sudo groupadd desarrolladores
sudo groupadd -g 2000 operaciones
#Specific GID
#system group (GID < 1000)
sudo groupadd --system servicios_web