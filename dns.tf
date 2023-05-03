resource "aws_route53_zone" "primary" {
  name = "terraform_record.com"
}

resource "aws_route53_record" "external" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www.terrafom_record.com"
  type    = "A"
  ttl = "300"
  records = ["10.0.0.1"]
}