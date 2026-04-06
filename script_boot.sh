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