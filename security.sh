id= #Displays the current user's UID (User ID), GID (Group ID), and groups.
cat /etc/passwd|head -10= #Reads the user account list and displays only the first 10 lines
cat /etc/group |head -10= #Is used to view the beginning of the system's group definition file.
groups= #Lists all the groups the current user belongs to.
groups $USER= #Specifically queries and lists the groups for the username stored in the environment variable $USER