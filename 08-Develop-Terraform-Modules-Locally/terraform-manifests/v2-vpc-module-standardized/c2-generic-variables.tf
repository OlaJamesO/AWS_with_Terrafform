#  Input Variables 
# AWS Region 
variable "aws_region" {
  description = "Region in which AWS Resouces to be created"
  type        = string
  default     = "us-east-1"
}

# Environment Variable
variable "Environment" {
  description = "Environment variable used as a prefix"
  type        = string
  default     = "dev"
}

# Business Division 
variable "Business_divison" {
  description = "Business Division in the the large organization this Infrastructure belongs"
  type        = string
  default     = "HR"
}