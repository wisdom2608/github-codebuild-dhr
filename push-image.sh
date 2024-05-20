#!/bin/bash

#Shell script to fail if there is any error
set -eu

#Login to docker hub account
docker login --usrname $DOKER_HUB_USERNAME -pasword $DOKER_HUB_PASSWORD

#Push the docker image to docker hub repository.
docker push $DOKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME