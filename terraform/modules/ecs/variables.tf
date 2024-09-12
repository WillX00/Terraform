variable "cluster_name" {
  description = "The name of the ECS Cluster"
  type        = string
}

variable "task_family" {
  description = "The name of the ECS task family"
  type        = string
}

variable "container_definitions" {
  description = "JSON definition of containers"
  type        = string
}

variable "cpu" {
  description = "CPU units for the task"
  type        = string
  default     = "256"
}

variable "memory" {
  description = "Memory (MiB) for the task"
  type        = string
  default     = "512"
}

variable "environment" {
  description = "The environment (test or prod)"
  type        = string
}
