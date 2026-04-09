locals {

  environment  = terraform.workspace
  Instance_name = "${var.Name}-${local.environment}"
  Instance_type = var.instance_type
  ec2_tags = {
    Name = "${var.Name}-${local.environment}"
    Env  = local.environment
  }

  tags   = merge(var.common_tags, local.ec2_tags)
  ami_id = data.aws_ami.devopsami.id
  sg_tags = {
     Name = "${var.Name}-${local.environment}-sg"
     Env = local.environment

  }
  sgtags = merge(var.common_tags,local.sg_tags)
  sg_name = "${var.Name}-${local.environment}-sg"
}
 