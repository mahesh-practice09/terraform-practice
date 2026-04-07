variable "ami_id" {
  type    = string
  default = "ami-0220d79f3f480ecf5"
}

# variable "instances" {
#   type = map(any)
#   default = {
#     frontend  = "t3.micro"
#     catalogue = "t3.micro"
#     user      = "t3.micro"
#     cart      = "t3.micro"
#     shipping  = "t3.micro"
#     payment   = "t3.micro"
#     mongodb   = "t3.medium"
#     redis     = "t3.medium"
#     rabbitmq  = "t3.medium"
#     mysql     = "t3.medium"
#   }
# }


#Here each.key = each.value
variable "instances" {
  type    = list(any)
  default = ["mongodb", "redis", "frontend", "mongodb"]
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
  type    = string
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
  type    = string
  default = "Z01154241BNSMMPVQO32W"
}

variable "domain_name" {
  type    = string
  default = "daws88s.shop"
}