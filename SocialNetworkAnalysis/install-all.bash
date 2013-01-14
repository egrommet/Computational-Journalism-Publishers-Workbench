#! /bin/bash -v

for i in dependencies packages extras
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
