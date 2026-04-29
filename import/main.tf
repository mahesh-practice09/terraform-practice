resource "aws_instance" "import" {
   instance_type = "t3.micro"
   ami = "ami-098e39bafa7e7303d"
   tags = {
      Name = "test-vm"
   }
}