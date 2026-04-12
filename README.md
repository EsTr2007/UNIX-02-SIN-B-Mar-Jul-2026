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

