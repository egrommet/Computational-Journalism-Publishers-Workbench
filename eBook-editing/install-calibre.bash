#! /bin/bash -v

mkdir -p /usr/local/src
pushd /usr/local/src

# install from Linux binary
python -c "import sys; py3 = sys.version_info[0] > 2; u = __import__('urllib.request' if py3 else 'urllib', fromlist=1); exec(u.urlopen('http://status.calibre-ebook.com/linux_installer').read()); main(install_dir='/usr/local/calibre')"
