#! /bin/bash -v

for i in dependencies R-patched ggobi graphviz-devel Rgraphviz packages
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
