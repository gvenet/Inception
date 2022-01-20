FROM alpine:3.13

RUN	apk update
RUN	apk add --no-cache --quiet --update mariadb mariadb-client bash

COPY tools/init.sh init.sh

ENTRYPOINT ["sh", "init.sh"]