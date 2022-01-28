#!/bin/bash

wp core download

wp core config \
	--dbname=$WP_DATABASE_NAME \
	--dbuser=$WP_DATABASE_USR \
	--dbpass=$WP_DATABASE_PWD \
	--dbprefix=wp_ \
	--dbhost=$MYSQL_HOST:3306

wp core install \
	--url=gvenet.42.fr \
	--title=inception \
	--admin_user=$WP_ADMIN_USR \
	--admin_password=$WP_ADMIN_PWD \
	--admin_email=$WP_ADMIN_EMAIL

/usr/sbin/php-fpm7