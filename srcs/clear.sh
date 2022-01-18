docker-compose down
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker image prune --all --force
docker volume prune --force
docker volume rm srcs_db_data srcs_wp_data
rm -rf /home/gvenet/data
docker images
docker ps -a
docker volume ls 

