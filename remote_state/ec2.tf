resource "aws_instance" "demo" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  
  
  tags = {
    Name = "Roboshop"
  }
}