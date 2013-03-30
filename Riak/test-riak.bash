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
#
# reference: 
# http://docs.basho.com/riak/latest/tutorials/fast-track/Building-a-Development-Environment/

source ~/.bash_profile
pushd ~/local/
cd riak-1.3.0
cd dev; ls
dev1/bin/riak start
dev2/bin/riak start
dev3/bin/riak start
dev4/bin/riak start
ps -ef | grep beam
dev2/bin/riak-admin cluster join dev1@127.0.0.1
dev3/bin/riak-admin cluster join dev1@127.0.0.1
dev4/bin/riak-admin cluster join dev1@127.0.0.1
dev2/bin/riak-admin cluster plan
dev2/bin/riak-admin cluster commit
dev2/bin/riak-admin member-status
popd

# We should now have a four-node cluster listening on 127.0.0.1:10018, 10028, 10038, and 10048!
# To shut it down, do 'pkill beam'