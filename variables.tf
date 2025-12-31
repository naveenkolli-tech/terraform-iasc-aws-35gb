variable "instance_name" {
  type        = string
  description = "EC2 instance name"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type (t3.medium, etc)"
}

variable "key_name" {
  type        = string
  description = "Existing EC2 key pair name"
}

variable "open_ports" {
  type        = list(number)
  description = "Ports to open (example: [22, 8080])"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}
