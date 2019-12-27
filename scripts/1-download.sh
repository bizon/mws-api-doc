#!/usr/bin/env bash

echo '[+] Recursively downloading MWS doc'

wget \
  --recursive \
  --no-host-directories \
  --accept html \
  --directory-prefix=src \
  http://docs.developer.amazonservices.com/en_FR/dev_guide/index.html || true

echo '[+] Done'
