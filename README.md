# Create WordPress with SQLite

## Requirements

- Bash terminal
- [PHP](https://www.php.net/)
- `wget`
- `unzip`
- `sed`

## Install

```sh
wget -qO create-wordpress-sqlite \
  https://raw.githubusercontent.com/luizbills/create-wordpress-sqlite/main/installer \
  && bash create-wordpress-sqlite
  && rm create-wordpress-sqlite
```

Then, run `./start-server` and access http://localhost:8080 in your browser.
