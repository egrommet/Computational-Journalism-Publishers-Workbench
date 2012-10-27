#! /bin/bash -v
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

./cleanup.bash # start with a clean slate
iostat -cdmxt -p ALL 2 > iostat.log & # start data collector
../Profiling/log-pmaps.bash redis-server > pmaps.log & # process maps
redis-server ./redis.conf & # start the server
sleep 15 # give server time to stabilize
#redis-benchmark -c 50 -n 10000 -q --csv | tee redis-benchmark.csv
redis-benchmark -c 10 -n 100000 -q --csv | tee redis-benchmark.csv
redis-cli < slowlog.cmd > slowlog.log
./parse-slowlog.pl slowlog.log > slowlog.csv
pkill redis-server
pkill log-pmaps
sleep 15 # give server time to shut down
pkill iostat
../Profiling/parse-iostat.pl iostat.log
