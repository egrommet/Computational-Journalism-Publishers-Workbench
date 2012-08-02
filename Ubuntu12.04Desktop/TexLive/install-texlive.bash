#! /bin/bash -v

export WHERE=http://mirror.ctan.org/systems/texlive/tlnet
export WHAT=install-tl-unx.tar.gz
export HERE=`pwd`
export MACHINE=`uname -i`

mkdir -p /usr/local/src
pushd /usr/local/src
rm -fr install-tl*
curl -L ${WHERE}/${WHAT} | tar xzf -
cd install-tl-*
./install-tl -profile ${HERE}/texlive.profile-${MACHINE}
popd
cp texlive-${MACHINE}.sh /etc/profile.d/
source /etc/profile
