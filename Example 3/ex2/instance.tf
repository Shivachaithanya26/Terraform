resource "aws_key_pair" "web-key" {
  key_name   = "webserverkey"
  public_key = file("inst.pub")
}

resource "aws_instance" "webinst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.web-key.key_name
  vpc_security_group_ids = ["sg-0f2a5f35554a6765f"]
  tags = {
    Name    = "Webserver-inst"
    project = "webserver"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }

  connection {
    user        = var.USER
    private_key = file("inst")
    host        = self.public_ip
  }
}