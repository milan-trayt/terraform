output "cloudfront_arn" {
  value = aws_cloudfront_distribution.this.arn
}

output "cloudfront_domain" {
  value = aws_cloudfront_distribution.this.domain_name
}