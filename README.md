# Create WordPress with SQLite

Create a blank WordPress with SQLite Database.

## Requirements

- Bash terminal
- [PHP](https://www.php.net/)
- `wget`
- `unzip`
- `sed`

## Install

```sh
wget -q -O - \
https://raw.githubusercontent.com/luizbills/create-wordpress-sqlite/main/installer \
| bash
```

Then, run `./start-server.sh` and access http://localhost:8080 in your browser.

## Features

- Create a new WordPress without webserver (apache, nginx, etc) or MySQL.
- Setup an Adminer database editor with autologin
- Start the webserver on other port with `./start-server.sh 3000` (e.g. 3000 is the port number)
