data "aws_instance" "demo" {
  instance_id = "i-00152d73ed3c162fd"

  filter {
    name   = "instance-state-name"
    values = ["running"]
  }


}