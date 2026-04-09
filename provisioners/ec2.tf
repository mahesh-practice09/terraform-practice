resource "aws_instance" "demo" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  
  
  tags = {
    Name = "Roboshop"
  }

  provisioner "local-exec" {
    command = "echo ${self.private_ip} > inventory.ini"
  }

  provisioner "local-exec" {
    command = "echo script 2"
  }

  provisioner "local-exec" {

    when = destroy
    command = "echo 'deleting the instance'"
  }
  
   provisioner "local-exec" {
    when = destroy
    command = "echo ${self.private_ip} > inventory.ini"
  }

   provisioner "local-exec" {
     command = "exit 1"

     on_failure = continue
     }
   
   connection {
        user = "ec2-user"
        type = "ssh"
        host = self.public_ip
        password = "DevOps321"
   }

   provisioner "remote-exec" {
     inline = [
             "sudo dnf install nginx -y",
             "sudo systemctl start nginx"
     ]
   }
   
   provisioner "remote-exec" {
     inline = [ "sudo systemctl stop nginx" ]
     when = destroy
   }
}
