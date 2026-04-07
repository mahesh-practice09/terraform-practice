resource "aws_instance" "demo" {
  # for_each = var.instances
  for_each               = toset(var.instances)
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.demosg.id]


  tags = {
    Name      = each.key
    Env       = "dev"
    Project   = "Roboshop"
    Terraform = "True"
  }
}
