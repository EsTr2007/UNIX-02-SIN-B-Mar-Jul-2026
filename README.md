El sistema que vamos a contruir tiene tres componentes:

1. **Kernel Linux** - el núcleo del sistema operativo
2. **BusyBox** - proporciona las utilidades básicas de Unix (ls, pwd, vi, etc.) en un solo binario
3. **Syslinux** - el bootloader que carga todo al arrancar

sudo apt update
sudo apt upgrade
sudo apt install -y git vim make gcc libncurses-dev flex bison cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86

**¿Para que sirve cada paquete?**

* "gcc, "make" - compilación del kernel y BusyBox
- "Libncurses-dev' - menús interactivos de configuración ("menuconflig")
- "flex, "bison', "bc" - requeridos por el proceso de build del kernel
- 'cpio" - para crear el initramfs
* "Libelf-dev', "libssl-dev' - dependencias del kernel
-"syslinux" - el bootloader
- "dosfstools' - para crear el filesystem FAT
qemu-system-x86" - para probar la imagen sin necesidad de hardware real

git clone --depth 1 https://github.com/torvalds/linux.git
cd linux
make menuconfig
make -j 2


Image of the project:

# List the files arc/x86/boot/bzImage to check if the compiled kernel exists
ls arch/x86/boot/bzImage

# Create the directory /boot-files with superuser privileges
sudo mkdir /boot-files

# It is one of the most important steps in the guide because it is extracting the "heart" of the operating system you just compiled.
sudo cp arch/x86/boot/bzImage /boot-files/

# That command we moved from /boot-files/initramfs to the main /boot-files folder.
cd ..

# Download the tools you will use on your distro and after one places you inside the folder so you can start configuring them.
git clone --depth 1 https://git.busybox.net/busybox
cd busybox

# Open the "user interface" to configure what features you want your software to have before you compile it.
make menuconfig

# The actual software construction begins. This is the step where the source code (text) is transformed into an executable binary.
make -j 2

# It showed errors related to tc, so the .config file was edited with the command "vim .config" 
# The line CONFIG_TC=y was located, and to edit it, the letter "i" was typed and changed to CONFIG_TC=n, After run again make -j 2

# Create the empty container where we will build the operating system before compressing it.
sudo mkdir /boot-files/initramfs

# Finally, it dumps the operating system files into the folder we created. This is the step where the folder structure, or skeleton, of our Linux system is built.
sudo make CONFIG_PREFIX=/boot-files/initramfs install

# It is essential for the rest of the packaging commands to work correctly.
cd /boot-files/initramfs

# Stop configuring tools and start programming the behavior of the operating system
sudo vi init

# At this point, a terminal window opened where, on the first line, I had to type #!/bin/sh
 /bin/sh, then esc and type :wq to return to the terminal we used

# These two lines are the "heart" of the initialization script. Here's the detailed technical explanation for you to include in your script_distro.sh:
#!/bin/sh
/bin/sh

# It performs a necessary cleaning of the file system to avoid conflicts during startup.
sudo rm linuxrc

# This step gives "life" to the file we created. Without this step, the kernel will see the init file but refuse to execute it, causing a boot error.
sudo chmod +x init

# This is the "packaging" command. In this step where you convert a folder full of files into a single compressed file that the kernel can load into RAM.
sudo find . | cpio -o -H newc > ../init.cpio
cd ..

# In this part show me "Permission denied" so run the following commands to fix the problem
# The first is cd /boot-files/initramfs which is used to access the correct folder
# The second is find . | cpio -o -H newc > /boot-files/init.cpio which is used to execute the packaging correctly
# The third is ls -l /boot-files/init.cpio to check if it already exists

# It makes me the absolute "owner" of the system permanently during the session.
sudo su

# It is used to create an "empty" file that behaves as if it were a 50-megabyte physical hard drive.
dd if=/dev/zero of=boot bs=1M count=50

# It gives "order" to the 50MB file we created with dd. Without this step, the boot file is just a bunch of zeros; after this command, it becomes a structured disk where you can save files.
mkfs -t fat boot

# This converts the data file into a boot disk. Without this step, QEMU would attempt to read the disk but wouldn't know where to begin loading the system.
syslinux boot

# Prepare the "gateway" to be able to place files into the virtual disk. Without this folder, you wouldn't have anywhere to "attach" the 50MB file we created.
mkdir m

# Connect the virtual disk to the current file system. This is the step where the 50MB file ceases to be a closed file and becomes a folder you can access.
mount boot m

# Place the operating system components inside the virtual disk. This is the step where the kernel and initramfs are saved in the 50MB file you prepared.
cp bzImage init.cpio m

# Here we got the "No such file or directory" message again, so to fix it I had to do the following:
# First I had to exit the folder I was in and navigate to the correct one using the command cd /boot-files
# Second, I had to clean up the files I created incorrectly using the command rm -rf initramfs/m initramfs/boot
# Third, I had to re-run the previous commands from /boot-files

# Close the disk and make sure that everything you copy is actually saved.
umount m

# It is the "turning on" of the virtual computer.
qemu-system-x86_64 -nographic -append "console=ttyS0" \
 -kernel bzImage -initrd init.cpio -drive file=boot,format=raw

 # Now, to check if everything went well, we must run the following commands
 ls = List all the files and folders in the directory you are in.
 pwd = It tells you the exact path of the folder where you are currently located.
 vi =  It is the standard text editor for creating or modifying files from the terminal.
 # When I ran vi command, another terminal window opened that wouldn't let me do anything, so to solve that I had to
 # Press the esc botton and when the cursor moves down type the command = q! to continue working
 bc = A mathematical calculator that allows you to perform operations directly on the console.

 # Now we need close the QEMU cleanly so we executed the following commands
 Press Ctrl + A
 After press X