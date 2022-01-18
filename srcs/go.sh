#!/bin/bash
docker-compose down
mkdir /home/gvenet/data
mkdir /home/gvenet/data/db_data
mkdir /home/gvenet/data/wp_data
./rmv.sh
docker-compose up -d --build
# ./ngt.sh
./wpt.sh