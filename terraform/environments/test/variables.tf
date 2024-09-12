# Nombre del entorno
variable "environment" {
  description = "The environment (e.g., test)"
  type        = string
  default     = "test"
}

# Nombre del ECS Cluster
variable "ecs_cluster_name" {
  description = "The name of the ECS cluster for testing"
  type        = string
  default     = "test-cluster"
}

# Nombre de la base de datos RDS
variable "rds_db_name" {
  description = "The name of the RDS database for testing"
  type        = string
  default     = "testdb"
}

# Usuario de la base de datos
variable "rds_username" {
  description = "The username for the RDS database"
  type        = string
  default     = "admin"
}

# Contraseña de la base de datos
variable "rds_password" {
  description = "The password for the RDS database"
  type        = string
}

# ID de la VPC en pruebas
variable "vpc_id" {
  description = "The ID of the VPC for testing"
  type        = string
  default     = "vpc-67890"
}
