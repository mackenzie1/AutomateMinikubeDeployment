#!/bin/bash

# Define variables
CONTAINER_NAME=portfolio_container
IMAGE_NAME=minikube-deployment
IMAGE_TAG=latest
DEPLOYMENT_NAME=minikube-deployment
POD_NAME=portfolio-pod

# Check if Minikube is running
if ! minikube status >/dev/null 2>&1; then
  echo "Minikube is not running. Please start Minikube before running this script. If you already have it installed the command is: minikube start"
  exit 1
fi

# Enable Minikube's Docker daemon
eval $(minikube docker-env)

# Build the Docker image
docker build -t $IMAGE_NAME:$IMAGE_TAG .

# Create the deployment
kubectl create deployment $DEPLOYMENT_NAME --image=$IMAGE_NAME:$IMAGE_TAG

# Scale the deployment to 1 replica
kubectl scale deployment $DEPLOYMENT_NAME --replicas=1

# Expose the deployment as a service
kubectl expose deployment $DEPLOYMENT_NAME --type=NodePort --port=80 --name=$CONTAINER_NAME

# Get the URL for accessing the service
SERVICE_URL=$(minikube service $CONTAINER_NAME --url)

# Wait for the service to become available
while ! curl --silent $SERVICE_URL >/dev/null; do
  sleep 1
done

# Print the URL for accessing the service
echo "Service URL: $SERVICE_URL"

# Get the pod name
POD_NAME=$(kubectl get pods -l app=$DEPLOYMENT_NAME -o=jsonpath='{.items[0].metadata.name}')

# Stream the logs from the pod
kubectl logs -f $POD_NAME
