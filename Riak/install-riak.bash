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
# http://docs.basho.com/riak/1.3.0/tutorials/fast-track/Building-a-Development-Environment/

source ~/.bash_profile
mkdir -p ~/local/
pushd ~/local/
rm -fr riak*
wget http://downloads.basho.com.s3-website-us-east-1.amazonaws.com/riak/1.3/1.3.0/riak-1.3.0.tar.gz
tar zxvf riak-1.3.0.tar.gz
cd riak-1.3.0
/usr/bin/time make all
make devrel DEVNODES=4
cd dev; ls
dev1/bin/riak start
dev2/bin/riak start
dev3/bin/riak start
dev4/bin/riak start
pgrep beam
dev2/bin/riak-admin cluster join dev1@127.0.0.1
dev3/bin/riak-admin cluster join dev1@127.0.0.1
dev4/bin/riak-admin cluster join dev1@127.0.0.1
dev2/bin/riak-admin cluster plan
dev2/bin/riak-admin cluster commit
dev2/bin/riak-admin member-status
popd
