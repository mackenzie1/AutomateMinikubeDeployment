provider "minikube" {
  version = "0.27.0"
}

resource "minikube_cluster" "my_cluster" {
  driver = "kvm2"
  memory = "4096"
}

resource "minikube_kubernetes_resources" "my_resource" {
  host = minikube_cluster.my_cluster.host
  resource {
    kind = "Pod"
    api_version = "v1"
    definition = <<EOF
    {
      "metadata": {
        "name": "nginx-pod"
      },
      "spec": {
        "containers": [
          {
            "name": "nginx",
            "image": "nginx:alpine"
          }
        ]
      }
    }
    EOF
  }
}