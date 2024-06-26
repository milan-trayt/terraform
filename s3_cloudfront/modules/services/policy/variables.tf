variable "bucket_arn" {
  type        = string
  description = "The ARN of the S3 bucket"
}

variable "cloudfront_arn" {
  type        = string
  description = "The ARN of the CloudFront distribution"
}

variable "bucket_id" {
  type        = string
  description = "The ID of the S3 bucket"
}