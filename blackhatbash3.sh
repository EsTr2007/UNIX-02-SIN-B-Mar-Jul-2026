#!/bin/bash

book="black hat bash"
echo "This book's name is ${book}"
set -x

echo "This book's name is $book"

root_directory=$(ls -ld /)
echo "${root_directory}"

book="Black Hat Bash"
unset book
echo "${book}"