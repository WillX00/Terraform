resource "aws_ecs_cluster" "this" {
  name = var.cluster_name

  tags = {
    Name = var.cluster_name
    Environment = var.environment
  }
}

resource "aws_ecs_task_definition" "this" {
  family                   = var.task_family
  container_definitions     = var.container_definitions
  requires_compatibilities = ["FARGATE"]
  network_mode              = "awsvpc"
  cpu                       = var.cpu
  memory                    = var.memory

  tags = {
    Name = var.task_family
    Environment = var.environment
  }
}
