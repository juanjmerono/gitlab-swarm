#!/bin/bash
# Set some variables with Play With Docker Dinamic Hostname
export SESSION_IP=`/sbin/ifconfig eth1 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'`
export GITLAB_HOSTNAME='ip'${SESSION_IP//\./\-}'-'${SESSION_ID}'-443.direct.labs.play-with-docker.com'
export GITLAB_REGISTRY_HOSTNAME=${GITLAB_HOSTNAME//443/5000}
export GITLAB_PAGES_HOSTNAME=${GITLAB_HOSTNAME//443/80}
export GITLAB_URL='https://'${GITLAB_HOSTNAME}
export GITLAB_REGISTRY_URL='https://'${GITLAB_REGISTRY_HOSTNAME}
export GITLAB_PAGES_URL='https://'${GITLAB_PAGES_HOSTNAME}
