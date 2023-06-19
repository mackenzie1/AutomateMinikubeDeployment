# Static HTML Page Containerized with Docker and Deployed to a Minikube Cluster
This project contains scripts to containerize a single static HTML page using Docker and deploy it to a Minikube cluster running on your local machine. The goal of this project is to provide a simple example of how to containerize a web application using Docker and deploy it to a Kubernetes cluster.

## Prerequisites
Before you can run the scripts in this project, you need to have the following software installed on your machine:

* Docker: https://www.docker.com/
* Minikube: https://minikube.sigs.k8s.io/docs/start/

## Running the Scripts
To run the scripts in this project, follow these steps:

1. Open a terminal window and navigate to the root directory of the project.
2. Build the Docker image by running the build-image.sh script:
`./start.sh`

This script will build the Docker image, start a Minikube cluster, and deploy the application to the Minikube cluster using a Kubernetes Deployment and Service
3. Open a web browser and navigate to the URL of the service to see the static HTML page running in the Minikube cluster.
4. To stop the application and tear down all the components, run the stop.sh script:
`./stop.sh`

This script will stop and remove the Kubernetes Deployment, Service, and Pod, as well as stop and delete the Minikube cluster.

That's it! You now have a simple example of how to containerize a web application using Docker and deploy it to a Kubernetes cluster.
=======
# AutomateMinikubeDeployment
Terraform Deploy Local Minikube(k8s) Cluser

https://nodejs.org/en/docs/guides/nodejs-docker-webapp/


Once the script is saved, you can run terraform apply to create the Minikube cluster and deploy the pod with the Alpine nginx image. 

You can then use kubectl get pods to view the pod that you've created, or kubectl port-forward to access your pod

https://minikube.sigs.k8s.io/docs/drivers/docker/


minikube start --driver=docker

Windows

minikube config set driver docker

Build Dockerfile manually -run in folder

Get-Content Dockerfile | docker build -
