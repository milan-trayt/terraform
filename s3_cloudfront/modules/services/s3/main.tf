resource "aws_s3_bucket" "this" {
  bucket = var.website_domain
}

resource "aws_s3_bucket_versioning" "name" {
  bucket = aws_s3_bucket.this.bucket
  versioning_configuration {
    status = var.versioning_enabled ? "Enabled" : "Suspended"
  }
}