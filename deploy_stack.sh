#!/bin/bash
. setenv.sh
docker stack deploy -c docker-compose.yml gitlab-ci
