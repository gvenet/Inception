.PHONY: start stop

start:
	@mkdir -p /home/gvenet/data/db_data
	@mkdir -p /home/gvenet/data/wp_data
	@docker-compose -f /home/gvenet/share/inception/srcs/docker-compose.yml up -d --build

stop:
	@docker-compose -f /home/gvenet/share/inception/srcs/docker-compose.yml down

rmv:
	@docker volume prune --force
	@docker volume rm srcs_db_data srcs_wp_data
	@rm -rf /home/gvenet/data
	@docker volume ls

restart: 
	@make -s stop
	@make -s start

restartv: 
	@make -s stop
	@make -s rmv
	@make -s start

clear:
	@docker-compose -f /home/gvenet/share/inception/srcs/docker-compose.yml down --remove-orphans
	@docker image prune --all --force
	@make -s rmv

purge:
	@docker stop $$(docker ps -a -q)
	@docker rm $$(docker ps -a -q)
	@docker image prune --all --force
	@make -s rmv

status:
	@docker ps -a
	@docker images
	@docker volume ls
	@docker network ls

ngt:
	@echo "NGINX"
	@docker container exec -ti nginx bash

wpt:
	@echo "WORDPRESS"
	@docker container exec -ti wordpress bash

dbt:
	@echo "MARIADB"
	@docker container exec -ti mariadb bash
