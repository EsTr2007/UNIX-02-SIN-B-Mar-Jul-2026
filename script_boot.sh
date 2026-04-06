cd #if we write cd without arguments, the system assumes that you want to go back "home"
cd /home/codespace #We are telling the system the exact address step by step.
cd ~ #It is a universal alias in the terminal to represent your home directory
cd $HOME #The system has the path of my personal folder saved in a "box" called $HOME.
mkdir proyecto #Create a new folder called project in my current location.
cd proyecto #We went inside the folder you just created. Now my terminal is "stopped" in there.
ls -lai # Instead of just looking at the file names, you ask the system to give you a full technical report.
total 8
925546 drwxr-xr-x 2 root root 4096 Apr  6 12:37 .
714616 drwxr-xr-x 1 root root 4096 Apr  6 12:37 ..
Stat . #shows all the detailed technical information of the directory where you are currently standing.
mkdir -p /tmp/prueba/sub1 /tmp/prueba/sub2 #Create directories hierarchically.
stat /tmp/prueba #Displays detailed metadata for the root folder you just created
man mkdir #Open the mkdir command user manual
pwd #Show the actual directory
whoami #Who am I?
ls #It only shows you the names of files and folders in a simple list
ls -l #Transforms the list into a detailed table
ls -la #It shows absolutely everything, including hidden files
la -lh #Instead of telling you that a file weighs 10485760 bytes, it will tell you that it weighs 10M. Convert sizes to KB, MB or GB automatically.
la -lt #Sort files by modification date
ls / #Lists the root directory of the system
ls /etc|head -20 #It lists the files in the /etc folder, which is where all system settings are saved, but only shows you the first 20 items.
ls /dev|head -20 #Lists the files in the /dev folder, where the operating system represents all connected hardware, showing only the first 20.