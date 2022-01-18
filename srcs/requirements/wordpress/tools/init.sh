#!/bin/bash

wp core download
wp core config --dbname=wordpress --dbuser=gvenet --dbpass=root --dbprefix=wp_ --dbhost=mariadb
wp core install --title="lololito" --url="totolezigoto.com" --admin_user="gvenet" --admin_password="root" --admin_email="tchuin@tourmentine.com"

/usr/sbin/php-fpm7