data "aws_ami" "devopsami" {
  most_recent = true
  owners      = ["973714476881"] # Canonical's AWS Account ID

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

