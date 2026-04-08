locals {
    
    Instance_name = "${var.Name}-${var.env}"
    Instance_type = var.instance_type
    ec2_tags = {
         Name = "${var.Name}-${var.env}"
         Env = var.env
    }
            
    tags = merge(var.common_tags,local.ec2_tags)
    ami_id = data.aws_ami.devopsami.id
    }
 