#!/usr/bin/env bash

echo '[+] Installing up-to-date version of pandoc'

PANDOC_DEB=https://github.com/jgm/pandoc/releases/download/2.10.1/pandoc-2.10.1-1-amd64.deb

wget $PANDOC_DEB --output-document=/tmp/pandoc.deb
sudo dpkg -i /tmp/pandoc.deb

echo '[+] Done'
