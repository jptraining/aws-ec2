output "url" {
  value = "http://${aws_instance.vm-ec2.public_ip}:${var.port}"
}

output "instance-id" {
  value = aws_instance.vm-ec2.id
}