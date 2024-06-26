data "aws_route53_zone" "this" {
  name         = var.website_domain
  private_zone = true
}

resource "aws_route53_record" "this" {
  zone_id = data.aws_route53_zone.this.zone_id
  name    = data.aws_route53_zone.selected.name
  type    = "CNAME"
  ttl     = "300"
  records = [var.cloudfront_domain]
}