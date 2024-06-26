variable "website_domain" {
  type        = string
  description = "The domain name and bucket name"
}

variable "versioning_enabled" {
  type        = bool
  description = "Enable versioning for the S3 bucket"
}