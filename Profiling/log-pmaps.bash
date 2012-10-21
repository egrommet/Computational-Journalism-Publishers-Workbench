#! /bin/bash

while true
do
sleep 2
TZ=UTC date +'%Y-%m-%d %H:%M:%S %z' 
pmap -d `pgrep redis-server`
done
