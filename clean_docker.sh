#!/bin/bash
docker images
docker rm $(docker ps -a -q)
docker rmi $(docker images -q -f dangling=true)
docker images
