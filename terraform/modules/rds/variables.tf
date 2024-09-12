variable "db_name" {
  description = "The name of the RDS database"
  type        = string
}

variable "username" {
  description = "The master username for the RDS instance"
  type        = string
}

variable "password" {
  description = "The master password for the RDS instance"
  type        = string
}

variable "instance_class" {
  description = "The instance type for RDS"
  type        = string
  default     = "db.t2.micro"
}

variable "allocated_storage" {
  description = "The storage size for RDS"
  type        = number
  default     = 20
}

variable "environment" {
  description = "The environment (test or prod)"
  type        = string
}
