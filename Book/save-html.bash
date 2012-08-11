#! /bin/bash -v

# make directory
mkdir -p images

# make html
rm -fr Book.html.LyXconv
lyx -e html Book.lyx
rm -f *.tex */*tex

# ImageMagick FTW!
pushd Book.html.LyXconv
for i in *.png
do
  cp $i zztemp.png
  convert zztemp.png -resize 500x600 $i
done
popd

# Add metadata and make EPUB with Sigil
rm -f *.epub
pushd Book.html.LyXconv
sigil *.html
popd

# run through epubcheck
epub-fix --delete-unmanifested --epubcheck Book.epub
epubcheck Book.epub
sigil Book.epub # fix errors
# stash stuff here in Git
git add *.lyx
git commit
git push

# cleanup
rm -f \#*
rm -f *.lyx~
git status
