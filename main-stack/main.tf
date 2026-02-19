terraform {
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