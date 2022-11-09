# Define Local Values in Terraform

locals {
  owners      = var.Business_divison
  environment = var.Environment
  name        = "${var.Business_divison}-${var.Environment}"
  common_tags = {
    owners      = local.owners
    environment = local.environment
  }
} 