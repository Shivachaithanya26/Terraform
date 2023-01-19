resource "aws_instance" "inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "instance-key"
  vpc_security_group_ids = ["sg-0f2a5f35554a6765f"]
  tags = {
    Name    = "First_instance"
    project = "instance"
  }

}