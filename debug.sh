#!/usr/bin/env bash

docker build --build-arg=TAGS=install,git-personal -t new-computer . 
docker run -it new-computer /bin/bash

