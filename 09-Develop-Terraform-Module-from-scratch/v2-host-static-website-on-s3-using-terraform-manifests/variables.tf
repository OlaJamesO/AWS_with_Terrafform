# input variable definations 
variable "bucket_name" {
  description = "Name of the s3 bucket"
  type        = string
}

variable "bucket_tags" {
  description = "Tags to set on the bucket"
  type        = map(string)
  default     = {}
}
variable "aws_region" {
  description = "Resource region"
  type        = string
}