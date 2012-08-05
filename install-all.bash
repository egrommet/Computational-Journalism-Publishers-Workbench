#! /bin/bash

for i in R-GGobi RStudio eBook-editing
do
  pushd $i
  ./install-all.bash
  popd
done
