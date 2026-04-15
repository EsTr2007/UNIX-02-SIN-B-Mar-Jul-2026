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