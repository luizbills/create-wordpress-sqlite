#!/usr/bin/env bash

set -e

cd $(dirname "${BASH_SOURCE[0]}")
SERVER_ROOT=$(pwd)

source $SERVER_ROOT/server.cfg

echo "Starting webserver..."

URL="$HOST:$PORT"

# close port if necessary
if grep "$PHP -S $URL" <<< $(ps aux) &> /dev/null;
then
	pkill -f "$PHP -S $URL"
fi

if [ ! -f $SERVER_ROOT/php.ini ];
then
	echo "" > $SERVER_ROOT/php.ini;
fi

WP_HOME="http://$URL" $PHP -S $URL -c "php.ini" -d variables_order=EGPCS &> /dev/null &

echo -e "\e[32mDevelopment Server started: http://$URL\e[0m"

if type "xdg-open" &> /dev/null;
then
	xdg-open http://$URL$OPEN_PATH &> /dev/null;
fi
