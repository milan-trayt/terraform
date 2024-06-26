variable "website_domain" {
  type        = string
  description = "The name of the S3 bucket"
}

variable "versioning_enabled" {
  type        = bool
  description = "Enable versioning for the S3 bucket"
}