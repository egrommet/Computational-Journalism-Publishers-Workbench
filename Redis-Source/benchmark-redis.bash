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
redis-server ./redis.conf & # start the server

if [ -e "/usr/bin/yum" ] # oprofile code currently only on Fedora!!!!
then
  export PID=`pgrep redis-server`
  export KERNEL=`uname -r`
  export VMLINUX=`locate vmlinux|grep debug|grep ${KERNEL}`

  operf \
    --events CPU_CLK_UNHALTED:200000:0:1:1 \
    --lazy-conversion \
    --vmlinux=${VMLINUX} \
    --pid=${PID} &
fi

if [ -e "/usr/bin/apt-get" ] # Linux Mint / Ubuntu have cpufreq, not cpupower
then
  sudo cpufreq-set -r -g performance
  cpufreq-info
else
  sudo cpupower frequency-set -r -g performance
  cpupower frequency-info
fi

echo 'Waiting 15 seconds for Redis server to start up'
sleep 15 # give server time to stabilize

# default params
#redis-benchmark -c 50 -n 10000 -q --csv | tee redis-benchmark.csv
redis-benchmark -c 50 -n 100000 -q --csv | tee redis-benchmark.csv
redis-cli < slowlog.cmd > slowlog.log
./parse-slowlog.pl slowlog.log > slowlog.csv
pkill redis-server
pkill log-pmaps

echo 'Waiting 15 seconds for Redis server to shut down'
sleep 15 # give server time to shut down
pkill iostat
../Profiling/parse-iostat.pl iostat.log

if [ -e "/usr/bin/yum" ] # oprofile code currently only on Fedora!!!!
then
  pkill --signal SIGINT operf
  echo 'Waiting 15 seconds for operf to shut down'
  sleep 15
  opreport --accumulated --debug-info --symbols --sort sample \
    -o opreport.txt
  opreport --accumulated --debug-info --symbols --sort sample \
    --callgraph -o opreport-callgraph.txt
  opreport --accumulated --debug-info --symbols --sort sample \
    --details -o opreport-details.txt
fi
