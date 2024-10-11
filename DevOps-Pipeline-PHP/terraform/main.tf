resource "aws_instance" "ubuntu-instance" {
  ami           = var.ami
  instance_type = "t2.medium"
  key_name      = "jenkins-access-w"
  security_groups = ["${aws_security_group.UbuntuSG.name}"]

  tags  = {
    Name  = "Ubuntu-EC2"
    Owner  = "Ait Ali"
  }

  root_block_device {
    volume_size = 30
    volume_type = "gp2"
    encrypted   = false
  }
}

