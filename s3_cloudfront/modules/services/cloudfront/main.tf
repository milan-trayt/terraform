resource "aws_cloudfront_distribution" "this" {
  origin {
    domain_name              = var.bucket_domain
    origin_id                = var.bucket_domain
    origin_access_control_id = var.bucket_id
  }

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = var.bucket_id


    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
    viewer_protocol_policy = "redirect-to-https"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
  enabled             = true
  wait_for_deployment = false
  aliases             = [var.website_domain]
}

resource "aws_cloudfront_origin_access_control" "s3_cloudfront_oac_imagebucket" {
  name                              = var.website_domain
  description                       = "Cloudfront S3 OAC Policy for S3"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}