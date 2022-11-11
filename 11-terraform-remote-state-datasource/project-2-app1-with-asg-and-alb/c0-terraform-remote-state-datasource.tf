# Terraform Remote State Datasource
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "james-terrafrom-state-01"
    key    = "dev/project1-vpc/t1.tfstate"
    region = "us-east-1"
  }
}