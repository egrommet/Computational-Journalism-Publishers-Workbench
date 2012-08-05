#! /bin/bash

for i in TexLive R-GGobi RStudio eBook-editing
do
  pushd $i
  ./install-all.bash
  popd
done
