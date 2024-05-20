#!/bin/bash

#Shell script to fail on any error
set -eu

#Build a Docker image
docker build -f $DOCKER_HUB_REPO_NAME/Dockerfile -t $DOKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME$: .

#IMAGE_TAG: $(CODEBUILD_RESOLVED_SOURCE_VERSION)

##In Most cases, the Dockerfile is found in the root directory but I have chosen to create a sub directory ...
# ...for the Dockefile *-f $DOCKER_HUB_REPONAME/Dockerfile* command.
# 1) The  "-f" and "$DOCKER_HUB_REPONAME/Dockerfile" is the path to Dockerfile folder. 
# 2) Dockefile folder, Docker image name, and Dockerhub repository have the same name. This will enables you to build ...
# ...push to Docker registory without tagging it to a new image before pushing.
# 4) This setup can help you build different docker image with the same buildspec.yml file and push to DHR...
# ...you just have to create a different DH repo name, replace "DOCKER_HUB_REPO_NAME" value in the Codebuid environment...
#...with the new DH repo name.