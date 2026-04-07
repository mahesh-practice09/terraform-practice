variable "ami_id" {
  type = string
  default = "ami-0220d79f3f480ecf5" 
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "tags" {
  type = map()
  default = {
    Name = "mongodb"
    Env = "dev"
    Project = "Roboshop"
    Terraform = "True"
  }
}

variable "sg_name" {
   type = string
   default = "allow_all_terraform"
}

variable "sg_description" {
  type = string
  default = "Allow TLS inbound traffic and all outbound traffic"
}