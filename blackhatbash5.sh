#!/bin/bash
touch test && touch test123
(ls; ps)
ls; ps; whoami
lzl || echo "el comando lzl fallo"

echo "uno" > archivo.txt
cat archivo.txt
echo "uno-uno" > archivo.txt
cat archivo.txt
echo "dos-dos" >> archivo.txt
cat archivo.txt
echo "tres" &> archivo.txt
cat archivo.txt
echo "tres" &>> archivo.txt
cat archivo.txt

ls -l / &> stdout_and_stderr.txt
cat > stdout_and_stderr.tx

ls -l / 1> stdout.txt 2> stderr.txt
cat > stdout.txt 2> stderr.txt

lzl 2> error.txt
cat error.txt