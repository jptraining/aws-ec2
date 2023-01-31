resource "aws_eip" "elastic-ip" {
  instance = aws_instance.vm-ec2.id
}

resource "aws_instance" "vm-ec2" {
  ami           = var.ami
  instance_type = "t2.micro"
  tags          = { Name = var.name }
  user_data = file(var.user_data)
  key_name = "cle_ssh_jerome"
  vpc_security_group_ids = var.security_group_ids
#  subnet_id = var.subnet_id
}