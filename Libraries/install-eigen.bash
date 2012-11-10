#! /bin/bash -v

pushd ${HOME}/local/src
rm -fr eigen*
curl -L http://bitbucket.org/eigen/eigen/get/3.1.2.tar.bz2 | tar xjf -

cd eigen-eigen*
mkdir build

cd build
cmake .. -DCMAKE_INSTALL_PREFIX=${HOME}/local
make install
cd ..

cd ..

popd
