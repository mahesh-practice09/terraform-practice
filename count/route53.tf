resource "aws_route53_record" "Roboshop_records" {
  count = length(var.Instances) 
  zone_id = var.zone_id
  #frontend.daws88s.shop
  name    = "${var.Instances[count.index]}.${var.domain_name}" 
  type    = "A"
  ttl     = "1"
  records = [aws_instance.demo[count.index].private_ip]
  allow_overwrite = true
}


  
resource "aws_route53_record" "frontend_records" {
  depends_on = [ aws_route53_record.Roboshop_records ]
  zone_id = var.zone_id
  #roboshop.daws88s.shop
  name    = "roboshop.${var.domain_name}" 
  type    = "A"
  ttl     = "1"
  records = [ for i in aws_instance.demo : i.public_ip if i.tags["Name"] == "frontend" ] 
  allow_overwrite = true
}