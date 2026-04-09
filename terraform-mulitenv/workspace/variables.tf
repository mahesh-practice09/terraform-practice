variable "ami_id" {
  type    = string
  default = "ami-0220d79f3f480ecf5"
}

# variable "instance_type" {
#   type    = string
#   default = "t3.micro"
# }

variable "instance_type" {
  default = {
    dev  = "t2.micro"
    uat  = "t3.small"
    prod = "t3.medium"
  }
}

variable "env" {
  type    = string
  default = "dev"
}

variable "Name" {
  type    = string
  default = "catalogue"
}

variable "common_tags" {
  type = map(any)
  default = {
    Project   = "Roboshop"
    Terraform = "True"
    Component = "Catalogue"
  }
}


variable "sg_description" {
  type    = string
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "vpc_id" {
  type    = string
  default = "vpc-081b5fc7c35186264"
}

