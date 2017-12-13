#!/bin/bash
. setenv.sh $1 $2 $3
docker stack deploy -c docker-compose.yml gitlab-ci
