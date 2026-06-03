#!/bin/bash
let result="4 * 5" 
echo ${result}
result=$((5 * 5))
echo ${result}
result=$(expr 5 + 505) 
echo ${result}