variable "ami_id" {
  type    = string
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "tags" {
  type = map(any)
  default = {
    Name = "Roboshop"
    Env       = "dev"
    Project   = "Roboshop"
    Terraform = "True"
  }
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

variable "ingress_rules" {
    type = list
    default = [ 
       { 
         port = 22
         cidr_blocks = ["0.0.0.0/0"]
       },
     { 
         port = 80
         cidr_blocks = ["0.0.0.0/0"]
       },
       { 
         port = 443
         cidr_blocks = ["0.0.0.0/0"]
       }
     ]
}

variable "sg_tags" {
  type = map(string)
  default = {
     Name = "allow_all_terraform-sg"
  }
}