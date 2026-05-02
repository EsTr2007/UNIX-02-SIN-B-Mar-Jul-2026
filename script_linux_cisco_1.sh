ls: #Lists files and directories.
ls Documents: #Lists contents of the Documents folder.
aptitude moo: #
ls -l: #Long format (permissions, size, date).
ls -r: #Lists in reverse order.
ls -rl: #Long format in reverse order.
aptitude -v moo: #
aptitude -vv moo: #
pwd: #Prints the path of the current directory.
cd Documents: #Changes directory to "Documents".
cd /: #Moves to the root directory of the system.
cd /home/sysadmin: #Changes to a specific absolute path.
cd School/Art: #Navigates to a specific subfolder.
cd ..: #Moves up one level to the parent directory.
cd ~: #Returns to my home directory.
ls -1 /var/log/: #Lists one file per line.
ls -lt /var/log: #Sorts by time (newest first).
ls -l -S /var/log: #Sorts by file size (largest first).
ls -lSr /var/log: #Sorts by size in reverse (smallest first).
ls -r /var/log: #Lists log contents in reverse order.
su -: #
exit: #
sl: #
sudo -u: #
sudo sl: #
cd ~/Documents: #Goes to "Documents" inside my Home.
ls -l hello.sh: #
./hello.sh: #
chmod u+x hello.sh: #
sudo chown root hello.sh: #
cat animals.txt: #
cat alpha.txt: #
head alpha.txt: #
tail alpha.txt: #
head -n 5 alpha.txt: #
tail -n 5 alpha.txt: #
cp /etc/passwd .: #
dd if=/dev/zero of=/tmp/swapex bs=1M count=50: #
dd if=/dev/sda of=/dev/sdb: #