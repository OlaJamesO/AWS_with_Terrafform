terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.34.0"
    }
  }

  # Adding backend as S3 for remote state storage
  backend "s3" {
    bucket = "james-terrafrom-state-01"
    key    = "dev/project1-vpc/t1.tfstate"
    #state locking 
    dynamodb_table = "Terraform-backend-lock"
    region         = "us-east-1"
  }

}
provider "aws" {
  region  = var.aws_region
  profile = "default"
}
#$HOME/.aws/cre
