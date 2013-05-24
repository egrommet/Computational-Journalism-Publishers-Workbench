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
sudo -H apt-get install -y \
  unixodbc \
  unixodbc-bin \
  unixodbc-dev

# Numeric libraries
sudo -H apt-get install -y \
  libgsl0-dev \
  libgmp-dev \
  libmpfr-dev \
  libatlas-dev \
  liblapack-dev \
  libboost-all-dev \
  libfftw3-dev \
  libsndfile1-dev

# GUI tools
sudo -H apt-get install -y \
  tcl-dev \
  tk-dev \
  bwidget \
  freeglut3-dev \
  libgtk2.0-dev \
  libxml2-dev

# RStudio Desktop
sudo -H apt-get install -y \
  cmake \
  libqtwebkit-dev \
  uuid-dev \
  ant

# SQLite and PostgreSQL
sudo -H apt-get install -y \
  libsqlite3-dev \
  sqlite3 \
  sqlite3-doc \
  sqlite \
  sqlite-doc \
  sqliteman \
  sqliteman-doc \
  pgadmin3 \
  postgresql \
  postgresql-client \
  postgresql-contrib \
  postgresql-doc \
  postgresql-plperl \
  postgresql-plpython \
  libpq-dev \
  postgresql-server-dev-all \
  odbc-postgresql

# wxMaxima
sudo -H apt-get install -y \
  wxmaxima

# Pandoc
sudo -H apt-get install -y \
  pandoc

# Graphics task view
sudo -H apt-get install -y \
  proj-bin \
  proj-data \
  proj-ps-doc \
  libproj-dev \
  dans-gdal-scripts \
  gdal-bin \
  libgdal-dev \
  libgdal-doc

# Dexy
sudo -H pip install dexy

# Editing
sudo -H add-apt-repository -y ppa:rgibert/ebook # Sigil lives here
sudo -H apt-get update
sudo -H apt-get install -y \
  calibre \
  lyx \
  sigil \
  alsa-utils \
  audacity \
  blender \
  bluefish \
  create-resources \
  dia \
  dia2code \
  dia-shapes \
  fontforge \
  fontmatrix \
  freemind \
  gimp \
  gimp-data \
  gimp-data-extras \
  gimp-gap \
  gimp-gmic \
  gimp-help-en \
  gimp-resynthesizer \
  gimp-ufraw \
  gmic \
  gstreamer0.10-packagekit \
  gthumb \
  gtk-recordmydesktop \
  hugin \
  imagemagick \
  imagemagick-doc \
  inkscape \
  intltool \
  istanbul \
  jabref \
  jing \
  mypaint \
  nautilus-image-converter \
  openclipart \
  optipng \
  pinta \
  pitivi \
  pngcrush \
  postr \
  pulseaudio \
  pulseaudio-module-x11 \
  pulseaudio-utils \
  rawtherapee \
  scribus \
  scribus-doc \
  shotwell \
  sozi \
  ufraw \
  ufraw-batch \
  texlive-xetex

sudo -H apt-get install -y \
  libreoffice-base \
  libreoffice-calc \
  libreoffice-draw \
  libreoffice-emailmerge \
  libreoffice-gtk \
  libreoffice-help-en-us \
  libreoffice-impress \
  libreoffice-math \
  libreoffice-nlpsolver \
  libreoffice-ogltrans \
  libreoffice-pdfimport \
  libreoffice-presentation-minimizer \
  libreoffice-presenter-console \
  libreoffice-sdbc-postgresql \
  libreoffice-writer \
  libreoffice \
  libreoffice-dmaths \
  libreoffice-filter-mobiledev \
  libreoffice-gtk3 \
  libreoffice-templates \
  libreoffice-wiki-publisher \
  libreoffice-writer2latex \
  libreoffice-writer2xhtml

# Spatial
sudo -H add-apt-repository 'deb http://qgis.org/debian-nightly precise main'
sudo -H add-apt-repository 'deb-src http://qgis.org/debian-nightly precise main'
sudo -H /usr/bin/gpg -–recv-keys 1F9ADD375CA44993
sudo -H /usr/bin/gpg -–export -–armor 1F9ADD375CA44993 \
  | sudo -H /usr/bin/apt-key add -
sudo -H apt-get update
sudo -H apt-get install -y \
  --allow-unauthenticated \
  qlandkartegt \
  libgeos-dev \
  libgeos-doc \
  grass \
  grass-dev \
  grass-doc \
  libnetcdf-dev \
  netcdf-bin \
  netcdf-doc \
  osm2pgsql \
  postgis \
  imposm \
  gpx2shp \
  libqgis-dev \
  qgis \
  qgis-api-doc \
  qgis-mapserver \
  qgis-plugin-grass \
  qgis-providers \
  librasterlite-dev \
  libspatialite-dev \
  rasterlite-bin \
  spatialite-bin \
  spatialite-gui \
  libsaga \
  libsaga-dev \
  saga

# Natural Language Processing
sudo -H apt-get install -y \
  subversion \
  libraptor2-doc \
  libraptor2-dev \
  raptor2-utils \
  python-nltk \
  wordnet \
  wordnet-base \
  wordnet-dev \
  wordnet-grind \
  wordnet-gui \
  wordnet-sense-index

# Social Network Analysis
sudo -H apt-get install -y \
  python-networkx \
  python-networkx-doc

# Scraping tools
sudo -H apt-get install -y \
  apvlv \
  comparepdf \
  diffpdf \
  ghostscript \
  ghostscript-doc \
  ghostscript-x \
  gpdftext \
  graphicsmagick \
  gsfonts \
  gsfonts-x11 \
  gtk-vector-screenshot \
  gv \
  htmldoc \
  imagemagick \
  imagemagick-doc \
  libwww-mechanize-gzip-perl \
  libwww-mechanize-perl \
  mupdf \
  mupdf-tools \
  pdfchain \
  pdfcrack \
  pdfgrep \
  pdfjam \
  pdfminer-data \
  pdfmod \
  pdfresurrect \
  pdfsam \
  pdfshuffler \
  pdftk \
  libpodofo-utils \
  poppler-data \
  poppler-utils \
  pstoedit \
  pstotext \
  python-mechanize \
  python-pdfminer \
  python-pdfrw \
  python-pdftools \
  python-pypdf \
  python-reportlab \
  python-reportlab-accel \
  python-reportlab-doc \
  qpdf \
  ruby-mechanize \
  ruby-pdf-inspector \
  ruby-pdf-reader \
  ruby-prawn \
  ruby-prawn-doc \
  tesseract-ocr \
  tesseract-ocr-afr \
  tesseract-ocr-ara \
  tesseract-ocr-aze \
  tesseract-ocr-bel \
  tesseract-ocr-ben \
  tesseract-ocr-bul \
  tesseract-ocr-cat \
  tesseract-ocr-ces \
  tesseract-ocr-chi-sim \
  tesseract-ocr-chi-tra \
  tesseract-ocr-chr \
  tesseract-ocr-dan \
  tesseract-ocr-deu \
  tesseract-ocr-deu-frak \
  tesseract-ocr-ell \
  tesseract-ocr-eng \
  tesseract-ocr-enm \
  tesseract-ocr-epo \
  tesseract-ocr-equ \
  tesseract-ocr-est \
  tesseract-ocr-eus \
  tesseract-ocr-fin \
  tesseract-ocr-fra \
  tesseract-ocr-frk \
  tesseract-ocr-frm \
  tesseract-ocr-glg \
  tesseract-ocr-heb \
  tesseract-ocr-hin \
  tesseract-ocr-hrv \
  tesseract-ocr-hun \
  tesseract-ocr-ind \
  tesseract-ocr-isl \
  tesseract-ocr-ita \
  tesseract-ocr-ita-old \
  tesseract-ocr-jpn \
  tesseract-ocr-kan \
  tesseract-ocr-kor \
  tesseract-ocr-lav \
  tesseract-ocr-lit \
  tesseract-ocr-mal \
  tesseract-ocr-mkd \
  tesseract-ocr-mlt \
  tesseract-ocr-msa \
  tesseract-ocr-nld \
  tesseract-ocr-nor \
  tesseract-ocr-osd \
  tesseract-ocr-pol \
  tesseract-ocr-por \
  tesseract-ocr-ron \
  tesseract-ocr-rus \
  tesseract-ocr-slk \
  tesseract-ocr-slk-frak \
  tesseract-ocr-slv \
  tesseract-ocr-spa \
  tesseract-ocr-spa-old \
  tesseract-ocr-sqi \
  tesseract-ocr-srp \
  tesseract-ocr-swa \
  tesseract-ocr-swe \
  tesseract-ocr-tam \
  tesseract-ocr-tel \
  tesseract-ocr-tgl \
  tesseract-ocr-tha \
  tesseract-ocr-tur \
  tesseract-ocr-ukr \
  tesseract-ocr-vie
./install-docsplit-gem.bash

# Building R from source
sudo -H apt-get install -y \
  texlive-fonts-extra \
  libtiff4-dev \
  libreadline-dev \
  tcl-dev \
  tk-dev \
  libjpeg-dev \
  liblzma-dev \
  libbz2-dev \
  texinfo
