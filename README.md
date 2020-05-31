# Laradock Install Shell Script
This shell script provide you an easy way to one-time execute Laradock installation from scratch.

# How to use
This automated script will bring you to the default installation of Apache2 and MySQL.
```
1. chmod -R 775 "script name".
2. ./"script name".
3. Wait until finished! :)
```

# Note
1. Make sure to free `:80` and `:3306` port, otherwise it will return error.
2. Avoid using `yes | ./"script name"` as it will encounter an error to the installation process.
3. After execute `docker-compose exec workspace bash`, don't forget to `chown -R www-data:www-data /var/www` to allow www data transfer.

# Credits
A script by Arief Purnama Muharram (ariefpurnamamuharram@gmail.com).
