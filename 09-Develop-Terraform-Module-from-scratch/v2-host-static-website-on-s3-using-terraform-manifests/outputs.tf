
# Output variable definitions

output "arn" {
  description = "ARN of the S£ Bucket"
  value       = aws_s3_bucket.s3_bucket
}

output "name" {
  description = "Name (id) of the bucket"
  value       = aws_s3_bucket.s3_bucket.id
}

output "domain" {
  description = "Domain Name of the bucket"
  value       = aws_s3_bucket.s3_bucket.website_domain
}

output "endpoint" {
  description = "Endpoint infromation of the bucket"
  value       = aws_s3_bucket.s3_bucket.website_endpoint
}