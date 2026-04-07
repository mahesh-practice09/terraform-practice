resource "aws_route53_record" "Roboshop_records" {
  for_each = aws_instance.demo
  zone_id  = var.zone_id
  #frontend.daws88s.shop
  name            = "${each.key}.${var.domain_name}"
  type            = "A"
  ttl             = "1"
  records         = [each.value.private_ip]
  allow_overwrite = true
}



resource "aws_route53_record" "frontend_records" {

  zone_id = var.zone_id
  #roboshop.daws88s.shop
  name            = "roboshop.${var.domain_name}"
  type            = "A"
  ttl             = "1"
  records         = [lookup(aws_instance.demo, "frontend").public_ip]
  allow_overwrite = true
}