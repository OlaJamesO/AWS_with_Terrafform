# Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.7"
    }

    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}
# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}
