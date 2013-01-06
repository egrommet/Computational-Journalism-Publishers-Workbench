#! /bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

source ~/.bash_profile
./cleanup.bash # start with a clean slate
iostat -cdmxt -p ALL 1 > iostat.log & # start data collector
../Profiling/log-pmaps.bash 1 redis-server > pmaps.log & # process maps
/usr/bin/time redis-server ./redis.conf & # start the server

echo 'Waiting 5 seconds for Redis server to start up'
sleep 5

# Fedora, Ubuntu or Linux Mint
if [ -e "/usr/bin/yum" -o -e "/usr/bin/apt-get" ]
then
  export PID=`pgrep redis-server`
  echo "PID=${PID}"
  export KERNEL=`uname -r`
  echo "KERNEL=${KERNEL}"
  export VMLINUX=`locate vmlinux|grep debug|grep ${KERNEL}`
  echo "VMLINUX=${VMLINUX}"

  operf \
    --events CPU_CLK_UNHALTED:200000:0:1:1 \
    --lazy-conversion \
    --vmlinux=${VMLINUX} \
    --pid=${PID} &
  echo 'Waiting 5 seconds for operf to start up'
  sleep 5
fi

if [ -e "/usr/bin/apt-get" ] # Linux Mint / Ubuntu have cpufreq, not cpupower
then
  sudo cpufreq-set -r -g performance
  cpufreq-info
else
  sudo cpupower frequency-set -r -g performance
  cpupower frequency-info
fi

# default params
#redis-benchmark -c 50 -n 10000 -P 1 -q --csv >> redis-benchmark.csv
for j in 0
do
  for i in 0 1 2 3 4 5 6 7 8 9
  do
    echo "Begin Pass ${j}${i}"
    /usr/bin/time redis-benchmark -c 50 -n 2000000 -P 200 -q --csv \
      -t ping,set,get,incr,lpush,lpop,sadd,spop \
      >> redis-benchmark.csv
    redis-cli < flushall.cmd
    /usr/bin/time redis-benchmark -c 50 -n 50000 -P 200 -q --csv \
      -t lrange \
      >> redis-benchmark.csv
    redis-cli < flushall.cmd
    /usr/bin/time redis-benchmark -c 50 -n 1000000 -P 200 -q --csv \
      -t mset \
      >> redis-benchmark.csv
    redis-cli < flushall.cmd
    echo "End Pass ${j}${i}"
  done
done

pkill redis-server
pkill log-pmaps

echo 'Waiting 5 seconds for Redis server to shut down'
sleep 5 # give server time to shut down
pkill iostat
../Profiling/parse-iostat.pl iostat.log

# Fedora, Ubuntu or Linux Mint
if [ -e "/usr/bin/yum" -o -e "/usr/bin/apt-get" ]
then
  pkill --signal SIGINT operf
  echo 'Waiting 5 seconds for operf to shut down'
  sleep 5
  opreport --accumulated --debug-info --symbols --sort sample \
    -o opreport.txt
  opreport --accumulated --debug-info --symbols --sort sample \
    --callgraph -o opreport-callgraph.txt
  opreport --accumulated --debug-info --symbols --sort sample \
    --details -o opreport-details.txt
fi
