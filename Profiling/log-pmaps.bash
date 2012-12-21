#! /bin/bash

while true
do
sleep $1
TZ=UTC date +'%Y-%m-%d %H:%M:%S %z' 
pmap -d `pgrep $2`
done
