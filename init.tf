terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.67.0"
    }
  }
  cloud {
    organization = "sst-fiap-soat"
    workspaces {
      name = "sst-sgdb"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
