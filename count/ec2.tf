resource "aws_instance" "demo" {
  count = length(var.Instances)
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.demosg.id]



tags = { 
    Name      = var.Instances[count.index]
    Env       = "dev"
    Project   = "Roboshop"
    Terraform = "True"
  }
}

