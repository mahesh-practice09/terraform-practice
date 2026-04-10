variable "ami_id" {
  type    = string
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "env" {
  type = string
  default = "dev"
}

variable "Name" {
  type = string
  default = "catalogue"
}

variable "common_tags" {
  type = map
  default = {
    Project   = "Roboshop"
    Terraform = "True"
  }
}

variable "sg_tags" {
  type = map
  default = {
     Name = "locals-demo-sg"

  }
}
variable "ec2_tags" {
  type = string
  default = "locals-demo"
}

variable "sg_name" {
  type    = string
  default = "allow_all_terraform"
}

variable "sg_description" {
  type    = string
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "vpc_id" {
  type = string 
  default = "vpc-081b5fc7c35186264"
}

