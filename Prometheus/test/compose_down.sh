#!/bin/bash


docker ps -a -f status=exited -f status=created
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -f status=exited -q)

#docker compose down
docker rm $(docker ps -a -q)

docker images
docker rmi $(docker images -a -q)

docker volume ls
docker volume prune


docker system prune
docker image ls
docker ps -a
docker volume ls

