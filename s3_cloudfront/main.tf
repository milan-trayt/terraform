module "s3_website" {
  source             = "./modules/workflows/s3-cloudfront-website"
  website_domain     = var.website_domain
  versioning_enabled = var.bucket_versioning_enabled
}