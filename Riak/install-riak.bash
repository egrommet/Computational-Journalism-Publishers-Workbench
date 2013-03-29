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
# docs.basho.com/riak/1.3.0/tutorials/installation/Installing-on-RHEL-and-CentOS/

export PATH=${PATH}:/usr/local/bin
mkdir -p /usr/local/src
pushd /usr/local/src
rm -fr riak*
wget http://downloads.basho.com.s3-website-us-east-1.amazonaws.com/riak/1.3/1.3.0/riak-1.3.0.tar.gz
tar zxvf riak-1.3.0.tar.gz
cd riak-1.3.0
/usr/bin/time make rel
ldconfig
popd

