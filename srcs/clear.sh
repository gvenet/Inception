docker-compose down
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker image prune --all --force
docker volume prune --force
rm -rf /home/gvenet/data
docker images
docker ps -a
docker volume ls 

