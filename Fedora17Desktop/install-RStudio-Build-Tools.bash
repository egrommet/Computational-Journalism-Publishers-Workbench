#! /bin/bash -v

yum install -y firefox git
yum check-update
yum update -y
yum install -y vim-X11 vim-enhanced liveusb-creator dkms aria2
yum install -y pandoc pandoc-markdown2pdf lyx TeXmacs calibre wv-devel curl wget
yum install -y tgif dia xfig inkscape scribus gnumeric abiword latex2rtf
yum install -y bluefish-shared-data bluefish

yum install -y \
  qdevelop \
  gcc \
  make \
  kernel-devel \
  R-java \
  R-java-devel \
  gcc-gfortran \
  gcc-c++ \
  rpmdevtools \
  cairo-devel \
  pango-devel \
  cmake \
  bzip2-devel \
  zlib-devel \
  libuuid-devel \
  openssl-devel \
  pam-devel \
  boost-devel \
  xml-commons-apis \
  qt-devel \
  qtwebkit-devel \
  qt-gstreamer-devel \
  hunspell-devel \
  xerces-c-devel \
  FlightCrew-devel \
  ZipArchive-devel \
  pcre-devel \
  ant

yum install -y \
  gtk2-devel \
  libcurl-devel \
  ggobi-devel \
  freeglut-devel \
  gd-devel \
  cairo-devel \
  pango-devel \
  libXt-devel \
  libX11-devel

yum install -y \
  wordnet-devel \
  gsl-devel \
  graphviz-devel

cp wordnet.sh /etc/profile.d # .csh still to be done!!

yum install -y \
  gnuplot-latex \
  latex2emf \
  latex2html \
  latex2rtf \
  libreoffice-writer2latex \
  texlive-latex \
  texlive-texmf-errata-latex \
  texlive-texmf-latex \
  vim-latex \
  vim-latex-doc \
  writer2latex \
  chktex \
  dot2tex \
  hevea \
  metapost-metauml \
  mimetex \
  pandoc-markdown2pdf \
  tetex-IEEEtran \
  tetex-dvipost \
  tetex-elsevier \
  tetex-tex4ht \
  tex-fonts-hebrew \
  tex-preview \
  tex-simplecv

yum install -y \
  texlive-doc \
  texlive-east-asian \
  texlive-texmf-afm \
  texlive-texmf-dvips \
  texlive-texmf-east-asian \
  texlive-texmf-errata \
  texlive-texmf-errata-afm \
  texlive-texmf-errata-context \
  texlive-texmf-errata-doc \
  texlive-texmf-errata-dvips \
  texlive-texmf-errata-east-asian \
  texlive-texmf-errata-fonts \
  texlive-texmf-errata-latex \
  texlive-texmf-errata-xetex \
  texlive-texmf-fonts \
  texlive-texmf-latex \
  texlive-texmf-xetex \
  texlive-utils \
  texlive \
  texlive-afm \
  texlive-context \
  texlive-dvips \
  texlive-dviutils \
  texlive-latex \
  texlive-texmf \
  texlive-texmf-context \
  texlive-texmf-doc \
  texlive-xetex
