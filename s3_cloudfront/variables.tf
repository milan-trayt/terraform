variable "website_domain" {
  type        = string
  description = "The domain name and bucket name"
}

variable "bucket_versioning_enabled" {
  type        = bool
  description = "value to enable versioning for the S3 bucket"
}

variable "state_lock_table" {
  type = string
}

variable "state_lock_key" {
  type = string
}