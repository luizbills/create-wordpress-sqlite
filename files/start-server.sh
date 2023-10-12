set -e

RELATIVE_DIR=$(dirname "${BASH_SOURCE[0]}")
cd $RELATIVE_DIR
DIR=$(pwd)
PORT=${1:-"8080"}
HOST='127.0.0.1'
URL="$HOST:$PORT"
PHP="php"

echo "Starting webserver..."

# close port if necessary
if grep "$PHP -S $URL" <<< $(ps aux) &> /dev/null;
then
	pkill -f "$PHP -S $URL"
fi

$PHP -S $URL -t $DIR &> /dev/null &
echo -e "\e[32mDevelopment Server started: http://localhost:$PORT\e[0m"

if type "xdg-open" &> /dev/null;
then
	xdg-open http://$URL &> /dev/null;
fi