# Adminer installer (Not installed by default)
# You should run this script manually if you want

ADMINER_VERSION='4.8.1'

echo "Downloading Adminer v{$ADMINER_VERSION}..."

wget -q -O - https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-{$ADMINER_VERSION}.php > adminer-editor.php
wget -q -O - https://raw.githubusercontent.com/luizbills/create-wordpress-sqlite/main/files/adminer-index.php > index.php

echo 'DONE!'
echo 'Adminer installed in http://localhost:8080/adminer/'