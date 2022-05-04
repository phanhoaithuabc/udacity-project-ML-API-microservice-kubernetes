#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="phanhoaithu/ml_api_microservice_udacity"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag ml_api_microservice_udacity:latest phanhoaithu/ml_api_microservice_udacity:latest

# Step 3:
# Push image to a docker repository
docker push phanhoaithu/ml_api_microservice_udacity:latest
