#! /bin/bash -v

export VERSION=`curl http://code.google.com/p/sigil/|grep Code.zip|head -n 1|sed 's/^.*Sigil-//'|sed 's/-Code.zip.*$//'`

sudo mkdir -p /usr/local/src
pushd /usr/local/src
  export WHERE=http://sigil.googlecode.com/files
  export WHAT=Sigil-${VERSION}-Code.zip
  export SDIR=SigilSource
  export BDIR=SigilBuild
  sudo rm -fr ${WHAT} ${SDIR} ${BDIR}
  sudo wget ${WHERE}/${WHAT}
  sudo mkdir -p ${SDIR}
  pushd ${SDIR}
    sudo unzip ../${WHAT}
  popd
  sudo mkdir -p ${BDIR}
  pushd ${BDIR}
    sudo cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release ../${SDIR}
    sudo make
    sudo make install
  popd
  
  # clean up
  sudo rm -fr ${WHAT} ${SDIR} ${BDIR}
popd
