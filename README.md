# Create WordPress with SQLite

Create a blank WordPress with SQLite Database.

## Requirements

- Bash terminal
- [PHP](https://www.php.net/)
- `wget`
- `unzip`
- `sed`

## Install

1. Create a empty directory and execute the following script:

```sh
wget -q -O - \
https://raw.githubusercontent.com/luizbills/create-wordpress-sqlite/main/installer \
| bash
```

2. Now run `./start-server.sh` to start the webserver and access http://localhost:8080

> - default username: `admin`
> - default password: `pass`

3. Optional: Install [Adminer](https://www.adminer.org/en/):

```sh
./adminer/install.sh
```

## Features

- Create a new WordPress without webserver (apache, nginx, etc) or MySQL.
- Setup an Adminer database editor with autologin
- Change the webserver port or other details editing the file `server.cfg`
