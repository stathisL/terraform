variable "project_name" {
  description = "Name of the Terraform project."
  type        = string
  default     = "aws-ha-web-infra"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t2.micro"
}

variable "server_port" {
  description = "Port used by the web application."
  type        = number
  default     = 8080
}
