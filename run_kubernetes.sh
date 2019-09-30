#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=aryahemanshu/udacitytask4:1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacitytask4 --image=$dockerpath --port=8000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
kubectl port-forward $POD_NAME 8000:80
