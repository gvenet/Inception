FROM alpine:3.13

RUN	apk update
RUN	apk add --no-cache --quiet --update mariadb mariadb-client bash

COPY tools/configure.sh configure.sh

ENTRYPOINT ["sh", "configure.sh"]