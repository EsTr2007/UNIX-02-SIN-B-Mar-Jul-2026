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