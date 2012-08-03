#! /bin/bash -v

source /etc/profile # need to find TexLive
export WHERE=ftp://ftp.stat.math.ethz.ch/Software/R
export DIR=R-patched
export WHAT=${DIR}.tar.bz2

mkdir -p /usr/local/src
pushd /usr/local/src
curl ${WHERE}/${WHAT} > ${WHAT}
rm -fr ${DIR}
tar xf ${WHAT}

pushd ${DIR}
export R_PAPERSIZE='letter'
export CFLAGS='-O2 -pipe -march=native'
export FFLAGS='-O2 -pipe -march=native'
export CXXFLAGS='-O2 -pipe -march=native'
export FCFLAGS='-O2 -pipe -march=native'
unset JAVA_HOME
mkdir -p ~/R/library; export R_LIBS_USER="~/R/library"
./configure \
  --enable-R-profiling \
  --enable-R-shlib \
  --enable-BLAS-shlib \
  --enable-lto \
  --enable-byte-compiled-packages \
  --enable-openmp \
  --enable-largefile \
  --enable-nls \
  --with-readline \
  --with-tcltk \
  --with-cairo \
  --with-libpng \
  --with-system-xz \
  --with-recommended-packages \
  --with-ICU \
  --with-x
/usr/bin/time make
make install
popd

popd
export MACHINE=`uname -i`
cp R-patched-${MACHINE}.conf /etc/ld.so.conf.d
ldconfig
cp R.sh /etc/profile.d
