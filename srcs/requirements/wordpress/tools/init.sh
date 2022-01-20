#!/bin/bash

wp core download
wp core config --dbname=wordpress --dbuser=gvenet --dbpass=root --dbprefix=wp_ --dbhost=mariadb:3306

/usr/sbin/php-fpm7