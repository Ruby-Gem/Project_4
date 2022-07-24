#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="rubygem31/project_4-helloworld"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag dropapp rubygem31/project_4-helloworld:dropapp

# Step 3:
# Push image to a docker repository
docker push dropapp rubygem31/project_4-helloworld:dropapp