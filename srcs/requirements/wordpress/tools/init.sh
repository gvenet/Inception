#!/bin/bash
wp core download --allow-root
wp core config --dbname=wordpress --dbuser=gvenet --dbpass=root --dbprefix=wp_ --dbhost=mariadb --allow-root
wp core install --url="totolezigoto.com" --title="lololito" --admin_user="gvenet" --admin_password="root" --admin_email="tchuin@tourmentine.com" 

/usr/sbin/php-fpm7
