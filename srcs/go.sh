#!/bin/bash
docker-compose down
./rmv.sh
mkdir -p /home/gvenet/data/db_data
mkdir -p /home/gvenet/data/wp_data
docker-compose up -d --build
# ./ngt.sh
./wpt.sh