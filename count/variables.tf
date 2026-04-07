variable "ami_id" {
  type    = string
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "Instances" {
   type = list 
   default = ["mongodb","redis","rabbitmq","mysql","catalogue","user","cart","payment","shipping","frontend"]
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

variable "zone_id" {
  type = string
  default = "Z01154241BNSMMPVQO32W"
}

variable "domain_name" {
  type = string
  default = "daws88s.shop"
}