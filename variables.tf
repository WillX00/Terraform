variable "region" {
  default = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the ECS cluster"
}

variable "db_name" {
  description = "Name of the RDS database"
}
