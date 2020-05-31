# Laradock Install Shell Script
This shell script provide you an easy way to one-time execute Laradock installation from scratch.

# How to use
This automated script will bring you default installation of Apache2 and MySQL.
```
1. chmod -R 775 "script name".
2. ./"script name".
3. Wait until finished! :)
```

# Note
1. Don't use `yes | ./"script name"` as it will encounter error to the installation process.
2. After execute `docker-compose exec workspace bash`, don't forget to `chown -R www-data:www-data /var/www` to allow www data transfer.

# Credits
A script by Arief Purnama Muharram (ariefpurnamamuharram@gmail.com).
