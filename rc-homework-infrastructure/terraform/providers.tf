# Terraform depedencies
terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~>2.35.1" # Adjust as needed
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.17.0" # Adjust as needed
    }
  }
}

# Minikube automatically handles kubeconfig objects. No import needed. 
provider "kubernetes" {
  config_path = "~/.kube/config" # Path to minikube's kubeconfig
}

# Configure the Helm provider using kubeconfig
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

