terraform {
  backend "s3" {
    bucket         = "devops-na-nuvem-remote-backend"
    key            = "terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "devops-na-nuvem-remote-backend"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.assum_role.region

    assume_role {
      role_arn = var.assum_role.role_arn
    }

    default_tags {
      tags = var.tags
    
    }
      
}