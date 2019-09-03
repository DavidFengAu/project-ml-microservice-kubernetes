#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=udacitymicroservice

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username adeelbarki
docker tag udacitymicroservice adeelbarki/udacitymicroservice:latest

# Step 3:
docker push adeelbarki/udacitymicroservice:latest
