#!/bin/bash

awk '{print $1}' log.txt

awk '{print $1,$2,$3}' log.txt
awk '{print $3}' log.txt
awk '{print $2}' log.txt
awk '{print $1}' log.txt

awk '{print $1,$NF}' log.txt

awk -F',' '{print $1}' example_csv.txt

awk 'NR < 10' log.txt

grep "42.236.10.117" log.txt | awk '{print $7}'

sed 's/Mozilla/Godzilla/g' log.txt

sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt

cat newlog.txt | grep "Gozilla" #Calls for the file, filters the output and searchs for the word "Godzilla" 

sed 's/ //g' log.txt > newlog1.txt

cat newlog1.txt

sed '1d' log.txt

cat newlogd.txt

sed '$d' newlog.txt > newlogl.txt

cat newlogl.txt

sed '5,7d' log.txt > newlog57.txt

cat newlog57.txt

sed -n '2,15 p' log.txt

sed -i '1d' log.txt

sleep 100 &
# [1] 23427

ps -ef | grep sleep
#root           1       0  0 12:12 ?        00:00:00 /bin/sh -c echo Container started trap "exit 0" 15  exec "$@" while sleep 1 & wait $!; do :; done -
#root       23427     739  0 13:10 pts/2    00:00:00 sleep 100
#root       23559       1  0 13:10 ?        00:00:00 sleep 1
#root       23561     739  0 13:10 pts/2    00:00:00 grep --color=auto sleep

jobs
#[1]+  Hecho                      sleep 100

fg %1
#sleep 100

CTRL -z
#[1]+  Detenido                   sleep 100

bg %1
# [1]+ sleep 100 &

nohup ./exercise2.sh &
#nohup: se descarta la entrada y se añade la salida a 'nohup.out'