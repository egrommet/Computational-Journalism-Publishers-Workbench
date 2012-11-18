#! /bin/bash

pushd ${HOME}/local/src
export FILES='http://arma.sourceforge.net/download.html'
export VERSION=`curl -s ${FILES}|grep tar\.gz|head -n 1|sed 's/^.*armadillo-//'|sed 's/\.tar\.gz.*$//'`
echo $VERSION
export DIR=armadillo-${VERSION}
export WHAT=${DIR}.tar.gz
export \
  WHERE=http://sourceforge.net/projects/arma/files
rm -fr armadillo*
wget ${WHERE}/${WHAT}
tar xf ${WHAT}

cd ${DIR}
cmake .
/usr/bin/time make
make install DESTDIR=${HOME}/local
cd ..

popd
