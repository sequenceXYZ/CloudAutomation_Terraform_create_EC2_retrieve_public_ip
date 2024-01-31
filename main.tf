provider "aws" {
  region = var.region
}

resource "aws_instance" "example_instance" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [var.security_group_id]


  tags = {
    Name = "example-instance"
  }
}

output "instance_public_ip" {
  value = aws_instance.example_instance.public_ip
}
