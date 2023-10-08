#!/usr/bin/env bash

# Adminer installer (Not installed by default)
# You should run this script manually if you want

RELATIVE_DIR=$(dirname "${BASH_SOURCE[0]}")
cd $RELATIVE_DIR

ADMINER_VERSION='4.8.1'
ADMINER_URL="https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php"

echo "Downloading Adminer v$ADMINER_VERSION..."

wget -q -O - $ADMINER_URL > adminer-editor.php
wget -q https://raw.githubusercontent.com/luizbills/create-wordpress-sqlite/main/files/adminer/index.php

rm -rf install.sh # delete the installer

echo 'DONE!'
echo 'Adminer installed in http://localhost:8080/adminer/'
