#! /bin/bash -v

for i in dependencies calibre epubcheck beta-sigil
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
