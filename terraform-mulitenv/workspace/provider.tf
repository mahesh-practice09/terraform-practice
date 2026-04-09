terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.39.0"
    }

  }

  backend "s3" {
    bucket       = "terraform-devops88s"
    region       = "us-east-1"
    encrypt      = true
    key          = "workspace-devops88s.tfstate"
    use_lockfile = true

  }
}

provider "aws" {
  region = "us-east-1"
}