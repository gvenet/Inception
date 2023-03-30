FROM debian:buster

RUN apt update -y && apt install mariadb-server -y
RUN sed -i 's/bind-address/bind-address = 0.0.0.0 #/i' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/conf.sql /tmp/

ARG MYSQL_ROOT_PWD
ARG WP_DATABASE_NAME
ARG WP_DATABASE_USR
ARG WP_DATABASE_PWD
ARG URL

RUN sed -i 's/MYSQL_ROOT_PWD/'"$MYSQL_ROOT_PWD"'/i' /tmp/conf.sql \
	&& sed -i 's/WP_DATABASE_NAME/'"$WP_DATABASE_NAME"'/i' /tmp/conf.sql \
	&& sed -i 's/WP_DATABASE_USR/'"$WP_DATABASE_USR"'/i' /tmp/conf.sql \
	&& sed -i 's/WP_DATABASE_PWD/'"$WP_DATABASE_PWD"'/i' /tmp/conf.sql \
	&& sed -i 's/URL/'"$URL"'/i' /tmp/conf.sql


RUN /etc/init.d/mysql start && mysql -u root --password="root" -e "source /tmp/conf.sql"
CMD mysqld_safe
