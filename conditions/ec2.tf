resource "aws_instance" "demo" {
  ami                    = var.ami_id
  instance_type          = var.Env == "dev" ? "t3.micro" : "t3.large"
  vpc_security_group_ids = [aws_security_group.demosg.id]


  tags = var.tags

}