#!/bin/bash
docker exec -it gitlab-ci_runner.1.$(docker service ps -f 'name=gitlab-ci_runner.1' gitlab-ci_runner --no-trunc -q) gitlab-runner register --non-interactive $@
