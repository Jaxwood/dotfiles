#!/usr/bin/env bash

docker build --build-arg=TAGS=install,git-personal -t new-computer . 
docker run -u 0 -it new-computer /bin/bash

