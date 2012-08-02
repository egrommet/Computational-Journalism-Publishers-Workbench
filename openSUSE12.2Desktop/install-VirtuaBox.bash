#! /bin/bash -v

pushd /etc/yum.repos.d
wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
popd
yum check-update
yum install -y VirtualBox-4.1
vi /etc/group
