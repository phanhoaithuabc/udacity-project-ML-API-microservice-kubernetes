#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="phanhoaithu/ml_api_microservice_udacity"

# Step 2
# Run the Docker Hub container with kubernetes
docker login
kubectl run ml_api_microservice_udacity --image=$dockerpath\
    --port=80 --labels app=ml_api_microservice_udacity

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml_api_microservice_udacity 8000:80
