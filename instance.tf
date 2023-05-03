resource "aws_instance" "project" {
    ami = "ami-03a933af70fa97ad2"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    key_name = "Docker-1704"
    vpc_security_group_ids = ["sg-00d22243f9d3ba140"]
    tags = {
      "Name" = "Terraform_Project"
    }

    connection {
      host = self.public_ip
      user = "root"
      type = "ssh"
      private_key = aws_instance.project.key_name
      timeout = "2m"
    }
    
    provisioner "remote-exec" {
      inline = [
        "export PATH=$PATH:/usr/bin",
        #Install Apache
        "apt update -y",
        "apt -y install apache2"
      ]
    }    
}

resource "aws_eip" "lb" {
  instance = aws_instance.project.id
  vpc      = true
}
