#!/bin/bash
docker build -t localhost.localdomain:5000/demo .
docker push localhost.localdomain:5000/demo
