variable "name" {
  description = "Le nom de l'instance EC2"
  default     = "my-ec2"
}

variable "ami" {
  description = "Image de l'instance EC2"
  default     = "ami-0aa7d40eeae50c9a9"
}

variable "port" {
  description = "Numéro de port"
  default     = 80
}

variable "user_data" {
}

variable "security_group_ids" {
  type = list(string)
}
