variable "ami_id" {
  type    = string
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  type    = map
  default = {
     frontend = "t3.micro"
     catalogue  = "t3.micro"
     user = "t3.micro"
     cart = "t3.micro"
     shipping = "t3.micro"
     payment = "t3.micro"
     mongodb = "t3.medium"
     redis = "t3.medium"
     rabbitmq = "t3.medium"
     mysql = "t3.medium"
  }
}

# variable "tags" {
#   type = map(any)
#   default = {
#     Name      = "mongodb"
#     Env       = "dev"
#     Project   = "Roboshop"
#     Terraform = "True"
#   }
# }

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

variable "sg_tags" {
    type = map(any)
  default = {
    Env       = "dev"
    Project   = "Roboshop"
    Terraform = "True"
  }
}