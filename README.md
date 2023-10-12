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

Then, just run `./start-server.sh` to start the webserver and access http://localhost:8080

The default user is:

- username: `admin`
- password: `pass`

## Features

- Create a new WordPress without webserver (apache, nginx, etc) or MySQL.
- Setup an Adminer database editor with autologin
- Change the webserver port or other details editing the file `server.cfg`
