#!/usr/bin/env bash

echo '[+] Installing up-to-date version of pandoc'

PANDOC_DEB=https://github.com/jgm/pandoc/releases/download/2.14.0.2/pandoc-2.14.0.2-1-amd64.deb

wget $PANDOC_DEB --output-document=/tmp/pandoc.deb
sudo dpkg -i /tmp/pandoc.deb

echo '[+] Done'
