Option short: ls -a #Lists all in the file
Option long: ls --all #Lists all in the file
#comand-options-arguments
ls -l #Displays files in a detailed list format (permissions, owner, size, date)
ls -h #Displays sizes in human-readable format (KB, MB, GB)
ls -l -a -h #Combine the commands -l -a -h
ls -lah #It's the same as the previous one, but in abbreviated form (combined flags)
mkdir -rf #Create a new directory
rm -rf #Deletes files and folders recursively without asking for confirmation.
rm -- rf #Try deleting a file named rf
mkdir -- -rf #Create a folder called -rf
rmdir -- -rf #Deletes an empty folder named -rf
ls --help #Displays quick help for the ls command (options and basic usage on screen)
man ls q #Open the complete ls manual (more detailed, with extensive explanation of all options).
--depth #Create a shallow clone with a history truncated to the specified number of commits
chmod #[quien,operador,permiso] archivo
chmod +x scrpt.sh #Anyone can run it (equivalent to a+x)
chmod u+x script.sh #Only the owner can execute it
chmod o-r secreto.txt #Remove reading from "others"
chmod u+rw,go-rwx privado #The owner reads/writes, nobody else can do anything
sudo echo "hola" > /etc/archivo_protegido #bash: /etc/archivo_protegido: Permission denied 
#sudo only affect the command after this, no all the command
echo "hola" | sudo tee /etc/archivo _protegido > /dev/null #echo execute as normal mode, the pipeline pass the outputto tee. sudo tee executes with privileges for. > /dev/nullmake that the message in the terminal  
cat /etc/archivo _protegido #Read and display the contents of the file in the terminal to verify that it was written correctly.
echo "hola" | sudo tee /etc/archivo _protegido #It does the same thing as the first command, but without muting it. The word "hello" will appear in the terminal right after you run it, and it will also be saved to the file.
sudo sh -c 'echo' "chao" >> /etc/archivo_protegido #This command is the direct alternative to using tee. Essentially, you're wrapping the entire operation within a "sub-process" that has full permissions.
cat /etc/archivo_protegido #Read and display the contents of the file in the terminal to verify that it was written correctly.
sudo su - #This is the "absolute power" command. It is the most common way to persistently enter Superuser (root) mode.
echo "$HOME" #Show the way, in this case is /home/codespace
echo '$HOME' #Print as string so $HOME 

umask: #Give us the level of permissions what we have on our codespace
touch archivo1: #Create new files called archivo2
mkdir directorio1: #These command create a new directory called directorio1
ls -l: #Displays files in a detailed list format (permissions, owner, size, date)
umask 027: #Change mask number 
touch archivo2: #Create a new file called archivo2
mkdir directorio2: #Create a new directory called directorio2
ls -l: #Displays files in a detailed list format (permissions, owner, size, date)
umask 077: #Change mask number 
touch secreto.txt: #Create a new file called secreto.txt
mkdir privado: #These command create a new directory called privado
ls -l: #Displays files in a detailed list format (permissions, owner, size, date)
sudo apt-get update: #Refreshes the local package list from repositories.
sudo apt-get install acl: #Installs the access control list utility.
sudo chown -R $(whoami): #Changes ownership of all files/folders to the current user.
 sudo setfacl -bnR . : #Recursively removes all extended ACL entries in the current

Result 1: 
total 64
-rw-rw-rw-  1 codespace root      34523 Apr 27 12:08 LICENSE
-rw-rw-rw-  1 codespace root         70 Apr 27 12:08 README.md
-rw-rw-rw-  1 codespace root          5 Apr 27 12:08 _protegido
-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:32 archivo1
drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:32 directorio1
-rw-rw-rw-  1 codespace root       1713 Apr 27 12:08 ejercicio1.sh
-rw-rw-rw-  1 codespace root        603 Apr 27 12:08 ejercicio2.sh
-rw-rw-rw-  1 codespace root         45 Apr 27 12:08 hola.sh
-rwxrwxrwx  1 codespace root       2522 Apr 27 12:31 script.sh

Result 2:
total 68
-rw-rw-rw-  1 codespace root      34523 Apr 27 12:08 LICENSE
-rw-rw-rw-  1 codespace root         70 Apr 27 12:08 README.md
-rw-rw-rw-  1 codespace root          5 Apr 27 12:08 _protegido
-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:32 archivo1
-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:35 archivo2
drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:32 directorio1
drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:35 directorio2
-rw-rw-rw-  1 codespace root       1713 Apr 27 12:08 ejercicio1.sh
-rw-rw-rw-  1 codespace root        603 Apr 27 12:08 ejercicio2.sh
-rw-rw-rw-  1 codespace root         45 Apr 27 12:08 hola.sh
-rwxrwxrwx  1 codespace root       2714 Apr 27 12:34 script.sh

Result 3:
total 76
-rw-rw-rw-  1 codespace root      34523 Apr 27 12:08 LICENSE
-rw-rw-rw-  1 codespace root         70 Apr 27 12:08 README.md
-rw-rw-rw-  1 codespace root          5 Apr 27 12:08 _protegido
-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:32 archivo1
-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:35 archivo2
drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:32 directorio1
drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:35 directorio2
-rw-rw-rw-  1 codespace root       1713 Apr 27 12:08 ejercicio1.sh
-rw-rw-rw-  1 codespace root        603 Apr 27 12:08 ejercicio2.sh
-rw-rw-rw-  1 codespace root         45 Apr 27 12:08 hola.sh
drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:41 privado
-rwxrwxrwx  1 codespace root       4271 Apr 27 12:40 script.sh
-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:41 secreto.txt

Result 4:
total 76
-rw-rw-rw- 1 codespace root      34523 Apr 27 12:08 LICENSE
-rw-rw-rw- 1 codespace root         70 Apr 27 12:08 README.md
-rw-rw-rw- 1 codespace root          5 Apr 27 12:08 _protegido
-rw-rw-rw- 1 codespace codespace     0 Apr 27 12:32 archivo1
-rw-rw-rw- 1 codespace codespace     0 Apr 27 12:35 archivo2
drwxrwxrwx 2 codespace codespace  4096 Apr 27 12:32 directorio1
drwxrwxrwx 2 codespace codespace  4096 Apr 27 12:35 directorio2
-rw-rw-rw- 1 codespace root       1713 Apr 27 12:08 ejercicio1.sh
-rw-rw-rw- 1 codespace root        603 Apr 27 12:08 ejercicio2.sh
-rw-rw-rw- 1 codespace root         45 Apr 27 12:08 hola.sh
drwxrwxrwx 2 codespace codespace  4096 Apr 27 12:41 privado
-rwxrwxrwx 1 codespace root       5170 Apr 27 12:43 script.sh
-rw-rw-rw- 1 codespace codespace     0 Apr 27 12:48 secreto.txt

umask 022: #Sets default permissions for new files (Owner: all; Group/Others: read/execute).
whoami: #Displays the username of the current user.
echo "Hola" > mi_archivo: #Creates (or overwrites) a file with the text "Hola".
ls -l mi_archivo: #Shows detailed information (permissions, owner, size) of the file.
sudo useradd -m -s /usr/bin/zsh luna: #Creates user "luna" with a home directory and Zsh shell.
sudo chown luna mi_archivo: #Changes the owner of the file to the user "luna".
ls -l mi_archivo: #Shows detailed information (permissions, owner, size) of the file.

groups: #Lists the groups the current user belongs to.
groupadd grupo_test: #Creates a new group named "grupo_test".
groups: #Lists the groups the current user belongs to.
sudo groupadd grupo_test: #Creates a new group named "grupo_test" with administrative privileges.
touch comun: #Creates an empty file named "comun" 
ls comun: #Lists the file "comun" to verify that it exists.
usermod -a -G grupo_test luna: #Adds user "luna" to the group "grupo_test" without removing them from others.
chgrp grupo_test comun: #Changes the group ownership of the file/folder "comun" to "grupo_test".
ls -l comun: #Displays the detailed permissions and group owner of "comun".
newgrp grupo_test: #Switches the user's current primary group to "grupo_test" for the current session.
sudo su: #Switches the user to the root account (Superuser) to execute commands with full system access.
sudo chown luna:grupo_test mi_archivo: #Changes both the owner (to "luna") and the group (to "grupo_test") of the file simultaneously.
ls -l mi_archivo: #Displays the file's details to verify the new owner and group settings