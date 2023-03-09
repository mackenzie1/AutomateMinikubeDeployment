#!/bin/bash

# Stop and remove the deployment
kubectl delete deployment my-static-html-page-deployment

echo "Deleted deployment"

# Stop and remove the service
kubectl delete service my-static-html-page-service

echo "Deleted service"

# Stop and remove the pod
kubectl delete pod my-static-html-page-pod

echo "Deleted pod"

# Stop and remove the Minikube cluster
minikube stop
minikube delete

echo "Deleted minikube cluster"

echo "Thanks for taking the time to look at my work!! :)"
