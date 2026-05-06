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
# Verify that they were created
grep "desarrolladores\|operaciones\|servicios _web" /etc/group
grep -E "desarrolladores|operaciones|servicios _web" /etc/group
# View main options
groupadd --help
# View the range of GIDs in the system
grep "GID _MIN\/GID_MAX\|SYS_GID" /etc/login.defs
# System groups have a GID lower than the minimum user GID
# In Ubuntu, typically:
#SYS_GID_MIN = 100
#SYS_GID_MAX = 999
#GID_MIN = 1000
#GID_MAX = 600000
# addgroup [options] group_name
# Create groups with addgroup
addgroup diseno
addgroup --gid 2100 marketing 
addgroup --system cache_web
#addgroup --gid 2100 marketing Verify
grep "diseno\|marketing\|cache_web" /etc/group
# See which groups the current user belongs to
groups
id
# Add user to a group with usermod (low level)
usermod -aG desarrolladores $USER
usermod -aG diseno $USER
#The solution is to change $USER (because it's empty) to root
usermod -aG desarrolladores root
usermod -aG diseno root
#CRITICAL: The -a (append) flag is essential.
Without -a, usermod REPLACES all user groups.
With -a, it ADDS the user to the group while preserving existing ones.
# CRITICAL: The -a (append) flag is essential.
Without -a, usermod REPLACES all user groups.
With -a, it ADDS the user to the group while preserving existing ones.
#CRITICAL: The -a (append) flag is essential.
#Without -a, usermod REPLACES all user groups.
#With -a, it ADDS the user to the group while preserving existing ones.
#Verify changes in /etc/group
grep "desarrolladores\|diseno" /etc/group
# Add user to group with adduser (high level, Debian)
adduser root marketing
# View current status
id root
grep root /etc/group
# Create a temporary group for the demo
groupadd grupo_temporal
usermod -aG grupo_temporal root
id root #has temporary_group
# Now the ERROR: usermod without -a
usermod -G desarrolladores root
#This removes all child groups except for developers.
id root #He lost all the other groups
# Restore
usermod -aG diseno,marketing,grupo_temporal root
id root #Restored
#Prepare the practice scenario
mkdir -p ~/lab_chgrp/{proyectos,reportes,scripts}
touch ~/lab_chgrp/proyectos/app.py
touch ~/lab_chgrp/proyectos/config.json
touch ~/lab_chgrp/reportes/informe.txt
touch ~/lab_chgrp/scripts/deploy.sh
ls /root
#View initial state — everyone has the user's group
ls -la ~/lab_chgrp/proyectos/
ls -la ~/lab_chgrp/reportes/
#Change the group of a file
chgrp desarrolladores ~/lab_chgrp/proyectos/app.py
ls -la ~/lab_chgrp/proyectos/
#Change the group of multiple files at once
chgrp diseno ~/lab_chgrp/proyectos/config.json ~/lab_chgrp/reportes/informe.txt
#Verify changes in both directories
ls -la ~/lab_chgrp/proyectos/
ls -la ~/lab_chgrp/reportes/
#Recursively change an entire directory
chgrp -R desarrolladores ~/lab_chgrp/scripts/ 
 ls -laR ~/lab_chgrp/scripts/
 # Verbose to see what changes
chgrp -Rv diseno ~/lab_chgrp/reportes/