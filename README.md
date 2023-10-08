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

Then, run `./start-server` and access http://localhost:8080 in your browser.
