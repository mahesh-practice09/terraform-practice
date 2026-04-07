resource "aws_instance" "demo" {
  for_each = var.instance_type
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = each.value
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  
  
tags = { 
    Name      = each.key
    Env       = "dev"
    Project   = "Roboshop"
    Terraform = "True"
  }
}
