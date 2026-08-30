variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "app_name" {
  description = "Application name prefix"
  type        = string
  default     = "containerized-app"
}

variable "container_port" {
  description = "Port exposed by the container"
  type        = number
  default     = 3000
}