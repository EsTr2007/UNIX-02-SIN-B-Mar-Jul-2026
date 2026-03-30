Comandos
pwd #Print word directory
cd / #Change directory
ls -F #Show the files with they tipe
ls -i #Show the files with they identificator
 echo "hola" >test.txt #Create a nwe file txt
 stat test.txt #Give all tecnical dates of file
sudo apt update # We use for update the list of available packages.
sudo apt upgrade #We use for install available updates for the programs you already have.
sudo apt install parted #We use for install the parted program on your system.
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e #It is a combination of several commands in Linux to view detailed information about disks and partitions, with separators to make it easier to read.
sudo parted -l #We use for display detailed information about all disks and their partitions in the system.
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS" #We use for find out if your system booted in UEFI or BIOS mode in Linux.
echo "esto es un archivo" >archivo.txt #We use for create a text file and add content to it