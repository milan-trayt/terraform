module "s3" {
  source             = "../../services/s3"
  website_domain     = var.website_domain
  versioning_enabled = var.versioning_enabled
}

module "cloudfront" {
  source         = "../../services/cloudfront"
  website_domain = var.website_domain
  bucket_domain  = module.s3.bucket_domain
  bucket_id      = module.s3.bucket_id
}

module "policy" {
  source         = "../../services/policy"
  bucket_id      = module.s3.bucket_id
  bucket_arn     = module.s3.bucket_arn
  cloudfront_arn = module.cloudfront.cloudfront_arn
}

module "route53" {
  source            = "../../services/route53"
  website_domain    = var.website_domain
  cloudfront_domain = module.cloudfront.cloudfront_domain
}