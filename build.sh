#!/bin/bash
export DOCKER_OPTS="--dns 8.8.8.8 --dns 8.8.4.4"
docker build -t demo .
#docker push localhost.localdomain:5000/demo
