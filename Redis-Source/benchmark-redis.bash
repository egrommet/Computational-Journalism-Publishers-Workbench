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

rm -f dump.rdb # start with a clean slate
iostat -cdmxt -p ALL 2 > iostat.log & # start data collector
../Profiling/log-pmaps.bash redis-server > pmaps.log & # process maps
redis-server & # start the server
sleep 15 # give server time to stabilize
redis-benchmark -q -n 100000 | tee redis-benchmark.log # run benchmark
pkill redis-server
sleep 15 # give server time to shut down
pkill iostat
pkill log-pmaps
../Profiling/parse-iostat.pl iostat.log
