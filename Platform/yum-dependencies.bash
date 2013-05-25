#! /bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

# unixODBC
sudo -H yum install -y \
  unixODBC \
  unixODBC-devel \
  unixODBC-gui-qt

# Numeric libraries
sudo -H yum install -y \
  gsl-devel \
  gmp-devel \
  mpfr-devel \
  atlas-devel \
  lapack-devel \
  boost-devel \
  fftw-devel \
  libsndfile-devel

# GUI tools
sudo -H yum install -y \
  bwidget \
  freeglut-devel \
  libXt-devel

# RStudio source
sudo -H yum install -y \
  patch

# RStudio Desktop
sudo -H yum install -y \
  libuuid-devel \
  qt-devel \
  qtwebkit-devel \
  ant \
  cmake

# SQLite and PostgreSQL
sudo -H yum install -y \
  sqlite \
  sqliteman \
  sqlite-devel \
  sqlite-doc \
  pgadmin3 \
  postgresql \
  postgresql-devel \
  postgresql-contrib \
  postgresql-docs \
  postgresql-plperl \
  postgresql-plpython \
  postgresql-server \
  postgresql-odbc

# wxMaxima
sudo -H yum install -y \
  wxMaxima

# Pandoc
sudo -H yum install -y \
  pandoc \
  pandoc-pdf

# Graphics task view
sudo -H yum install -y \
  gdal \
  gdal-devel \
  gdal-doc \
  proj \
  proj-devel \
  proj-epsg

# Dexy
sudo -H python-pip install dexy

# Editing
sudo -H yum install -y \
  sigil \
  lyx \
  calibre \
  alsa-plugins-pulseaudio \
  alsa-utils \
  audacity \
  audacity-manual \
  blender \
  bluefish \
  cinepaint \
  dia \
  dia-gnomeDIAicons \
  entangle \
  fontforge \
  fontmatrix \
  freemind \
  gimp \
  gimp-data-extras \
  gimp-devel-tools \
  gimp-fourier-plugin \
  gimp-help \
  gimp-help-browser \
  gimp-lqr-plugin \
  gimp-resynthesizer \
  GREYCstoration \
  GREYCstoration-gimp \
  gstreamer-plugins-bad-free \
  gstreamer-plugins-espeak \
  gstreamer-plugins-good \
  gthumb \
  gtk-recordmydesktop \
  hugin \
  ImageMagick \
  inkscape \
  inkscape-docs \
  inkscape-sozi \
  inkscape-view \
  intltool \
  istanbul \
  jabref \
  jing \
  mypaint \
  nautilus-image-converter \
  openclipart \
  optipng \
  PackageKit-gstreamer-plugin \
  pinta \
  pitivi \
  pngcrush \
  postr \
  pulseaudio \
  pulseaudio-module-x11 \
  pulseaudio-utils \
  rawtherapee \
  scribus \
  shotwell \
  ufraw \
  ufraw-gimp \
  xsane-gimp

# LibreOffice
sudo -H yum install -y \
  libreoffice-emailmerge \
  libreoffice-graphicfilter \
  libreoffice-headless \
  libreoffice-impress \
  libreoffice-langpack-en \
  libreoffice-math \
  libreoffice-nlpsolver \
  libreoffice-ogltrans \
  libreoffice-opensymbol-fonts \
  libreoffice-pdfimport \
  libreoffice-postgresql \
  libreoffice-presentation-minimizer \
  libreoffice-presenter-screen \
  libreoffice-report-builder \
  libreoffice-wiki-publisher \
  libreoffice-writer2latex \
  libreoffice-writer2xhtml \
  libreoffice-xsltfilter

# Spatial
sudo -H yum install -y \
  geos \
  geos-devel \
  grass \
  netcdf-devel \
  osm2pgsql \
  pgRouting \
  postgis \
  postgis-docs \
  postgis-utils \
  qgis \
  qgis-grass \
  spatialite-gui \
  spatialite-tools \
  saga \
  saga-devel

# Natural Language Processing
sudo -H yum install -y \
  subversion \
  raptor2 \
  raptor2-devel \
  python-nltk \
  wordnet \
  wordnet-devel

# Social Network Analysis
sudo -H yum install -y \
  python-networkx \
  python-networkx-doc

# Scraping tools
sudo -H yum install -y \
  apvlv \
  baekmuk-ttf-fonts-ghostscript \
  diffpdf \
  ghostscript \
  ghostscript-chinese \
  ghostscript-chinese-zh_CN \
  ghostscript-chinese-zh_TW \
  ghostscript-doc \
  ghostscript-fonts \
  ghostscript-gtk \
  GraphicsMagick \
  htmldoc \
  ImageMagick \
  ImageMagick-doc \
  mupdf \
  pdfchain \
  pdfcrack \
  pdfedit \
  pdfgrep \
  pdfmerge \
  pdfmod \
  pdfresurrect \
  pdfshuffler \
  pdftk \
  pdf-tools \
  perl-PDF-API2 \
  perl-PDF-Create \
  perl-PDF-Haru \
  perl-PDF-Reuse \
  perl-Text-PDF \
  perl-WWW-Mechanize \
  perl-WWW-Mechanize-GZip \
  podofo \
  poppler \
  poppler-data \
  poppler-utils \
  pstoedit \
  pyPdf \
  pypoppler \
  python-mechanize \
  python-poppler-qt4 \
  python-reportlab \
  qpdf \
  qpdf-doc \
  rubygem-mechanize \
  rubygem-pdf-reader \
  rubygem-pdf-reader-doc \
  tesseract \
  tesseract-devel \
  tesseract-langpack-bul \
  tesseract-langpack-cat \
  tesseract-langpack-ces \
  tesseract-langpack-chi_sim \
  tesseract-langpack-chi_tra \
  tesseract-langpack-dan \
  tesseract-langpack-dan-frak \
  tesseract-langpack-deu \
  tesseract-langpack-deu-frak \
  tesseract-langpack-ell \
  tesseract-langpack-fin \
  tesseract-langpack-fra \
  tesseract-langpack-hun \
  tesseract-langpack-ind \
  tesseract-langpack-ita \
  tesseract-langpack-jpn \
  tesseract-langpack-kor \
  tesseract-langpack-lav \
  tesseract-langpack-lit \
  tesseract-langpack-nld \
  tesseract-langpack-nor \
  tesseract-langpack-pol \
  tesseract-langpack-por \
  tesseract-langpack-ron \
  tesseract-langpack-rus \
  tesseract-langpack-slk \
  tesseract-langpack-slv \
  tesseract-langpack-spa \
  tesseract-langpack-srp \
  tesseract-langpack-swe \
  tesseract-langpack-swe-frak \
  tesseract-langpack-tgl \
  tesseract-langpack-tur \
  tesseract-langpack-ukr \
  tesseract-langpack-vie \
  texlive-pdfjam \
  texlive-pdfjam-doc
./install-docsplit-gem.bash

# Building R from source
sudo -H yum install -y \
  readline-devel \
  tcl-devel \
  tk-devel \
  texlive-collection-fontsextra \
  libtiff-devel \
  libjpeg-turbo-devel \
  openjpeg-devel \
  pango-devel \
  cairo-devel \
  xz-devel \
  texinfo \
  bzip2-devel

# WordNet environment variable
sudo -H cp wordnet-yum.sh /etc/profile.d/ # set WordNet home
source /etc/profile
set|grep WNHOME
