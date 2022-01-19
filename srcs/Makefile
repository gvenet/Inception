.PHONY: start stop

start:
	@mkdir -p /home/gvenet/data/db_data
	@mkdir -p /home/gvenet/data/wp_data
	@docker-compose up -d --build

stop:
	@docker-compose down

rmv:
	@docker volume prune --force
	@docker volume rm srcs_db_data srcs_wp_data
	@rm -rf /home/gvenet/data
	@docker volume ls

restart: 
	@make -s stop
	@make -s rmv
	@make -s start

clear:
	@docker-compose down --remove-orphans
	@docker image prune --all --force
	@make -s rmv
	@docker images
	@docker ps -a

ngt:
	@echo "NGINX"
	@docker container exec -ti nginx bash

wpt:
	@echo "WORDPRESS"
	@docker container exec -ti wordpress bash

dbt:
	@echo "MARIADB"
	@docker container exec -ti mariadb bash
