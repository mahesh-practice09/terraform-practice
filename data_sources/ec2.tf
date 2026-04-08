resource "aws_instance" "demo" {
  ami                    = data.aws_ami.devopsami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.demosg.id]


  tags = var.tags

}