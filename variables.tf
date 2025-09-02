variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "The AWS region to deploy resources in"
}

variable "db_username" {
  type        = string
  default     = "admin"
  description = "The username for the RDS database"
}

variable "db_password" {
  type        = string
  description = "The password for the RDS database"
  default     = "pass"
  sensitive   = true
}