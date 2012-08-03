#! /bin/bash -v

source /etc/profile
export PATH=/usr/local/bin:$PATH
which R
export HERE=`pwd` # save pointer to where the hacked files are
mkdir -p /usr/local/src 

# get source tarball from Github
pushd /usr/local/src
  rm -fr rstudio*
  curl -k -L https://github.com/rstudio/rstudio/tarball/v0.96.316 > rstudio.tgz
  tar xf rstudio.tgz
  pushd rstudio-*
    pushd dependencies/common
      for i in gwt dictionaries mathjax
      do
        patch -b ./install-$i ${HERE}/install-$i.patch
        ./install-$i
      done
    popd
    patch -b src/gwt/build.xml ${HERE}/build.xml.patch
    mkdir build
    pushd build

      # Server
      cmake \
        -DRSTUDIO_TARGET=Server \
	-DCMAKE_BUILD_TYPE=Release ..
      /usr/bin/time make install

      # Desktop
      cmake \
        -DRSTUDIO_TARGET=Desktop \
	-DCMAKE_BUILD_TYPE=Release ..
      /usr/bin/time make install

    popd
  popd
popd
