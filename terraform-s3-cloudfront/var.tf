variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "static-site-projt" # Replace with your actual bucket name
}

variable "cloudfront_distribution_alias" {
  description = "The alias for the CloudFront distribution (domain name)"
  type        = string
  default     = "test.com" # Replace with your actual domain name
}

variable "certificate_arn" {
  description = "The ARN of the SSL certificate for the CloudFront distribution"
  type        = string
  # Replace with your actual certificate ARN and ensure it is in us-east-1
  default = "arn:aws:acm:us-east-1:123456789012:certificate/your-certificate-id" # Replace with your actual certificate ARN
}

variable "default_root_object" {
  description = "The default root object for the CloudFront distribution"
  type        = string
  default     = "index.html"
}

variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "zone_id" {
  description = "The Route 53 hosted zone ID for the domain"
  type        = string
  default     = "your zone id" # Replace with your actual hosted zone ID
}