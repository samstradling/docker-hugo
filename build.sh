#!/bin/bash

VERSION=$(cat version.txt)

# Build
docker build . -t samstradling/docker-hugo:latest

# Tag
docker tag samstradling/docker-hugo:latest samstradling/docker-hugo:$VERSION

#Push
if [ "$1" == "push" ]; then
    docker push samstradling/docker-hugo:latest
    docker push samstradling/docker-hugo:$VERSION
fi
