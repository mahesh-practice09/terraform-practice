resource "aws_instance" "demo" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.demosg.id]


  tags = merge(var.common_tags,var.ec2_tags)

}