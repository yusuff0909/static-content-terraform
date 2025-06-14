output "cloudfront_distribution_url" {
  value = aws_cloudfront_distribution.static_site-cdn.domain_name
}

output "s3_bucket_name" {
  value = aws_s3_bucket.static_site-projt.bucket
}

output "cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.static_site-cdn.id
}