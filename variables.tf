variable "instance_name" {
  description = "EC2 instance name"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type (example: t3.medium)"
  type        = string
}

variable "root_volume_size_gb" {
  description = "Root disk size in GB (example: 8, 16, 30, 35, 50, 100)"
  type        = number

  validation {
    condition     = var.root_volume_size_gb >= 8
    error_message = "Root volume size must be at least 8 GB."
  }
}

variable "key_name" {
  description = "Existing EC2 key pair name"
  type        = string
}

variable "open_ports" {
  description = "Ports to open (example: [22, 8080])"
  type        = list(number)
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
