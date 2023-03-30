.PHONY: start stop

start:
	@mkdir -p /Users/imac/Prog/Inception/data/db_data
	@mkdir -p /Users/imac/Prog/Inception/data/wp_data
	@docker-compose --project-directory srcs -f srcs/docker-compose.yml up -d --build

stop:
	@docker-compose --project-directory srcs -f srcs/docker-compose.yml down

rmv:
	@docker volume prune --force
	@rm -rf /Users/imac/Prog/Inception/data
	@docker volume rm srcs_db_data srcs_wp_data
	

restart: 
	@make -s stop
	@make -s start

restartv: 
	@make -s stop
	@make -s rmv
	@make -s start

clear:
	@docker-compose --project-directory srcs -f srcs/docker-compose.yml down --remove-orphans
	@docker image prune --all --force
	@make -s rmv

purge:
	@docker system prune --all --force
	@docker image prune --all --force
	@make -s rmv
	@docker stop $$(docker ps -a -q)
	@docker rm $$(docker ps -a -q)

status:
	@docker ps -a
	@docker images -a
	@docker volume ls
	@docker network ls

ngt:
	@docker container exec -ti nginx sh

wpt:
	@docker container exec -ti wordpress bash

dbt:
	@docker container exec -ti mariadb bash
