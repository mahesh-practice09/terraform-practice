resource "aws_instance" "demo" {
  ami                    = local.ami_id
  instance_type          = lookup(var.instance_type,local.environment)
  vpc_security_group_ids = [aws_security_group.demosg.id]


  tags = local.tags

}