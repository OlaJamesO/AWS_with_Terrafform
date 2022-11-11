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
    # Add Random Provider in required_providers block
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }


  }
  backend "s3" {
    bucket         = "james-terrafrom-state-01"
    key            = "dev/project2-app1/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dev-project2-app1-lock"

  }
}
# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}

# Create Random Pet Resource 
resource "random_pet" "this" {
  length = 2
}