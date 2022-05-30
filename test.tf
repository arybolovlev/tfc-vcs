terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.2.0"
    }
    helm = {
      source = "hashicorp/helm"
      version = "2.4.1"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

data "aws_eks_cluster" "this" {
  name = "test-cluster-5DTrxvUb"
}

provider "helm" { 
    kubernetes { 
        host = data.aws_eks_cluster.this.endpoint 
        cluster_ca_certificate = base64decode(data.aws_eks_cluster.this.certificate_authority.0.data) 
        exec { 
            api_version = "client.authentication.k8s.io/v1alpha1" 
            args = ["eks", "get-token", "--cluster-name", data.aws_eks_cluster.this.name] 
            command = "aws" 
        } 
    } 
    experiments { 
        manifest = true 
    } 
}

resource "helm_release" "example" {
  name       = "my-redis-release"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "redis"
  version    = "16.10.0"

  set {
    name  = "cluster.enabled"
    value = "true"
  }

  set {
    name  = "metrics.enabled"
    value = "true"
  }

  set {
    name  = "service.annotations.prometheus\\.io/port"
    value = "9127"
    type  = "string"
  }
}
