module "ecs" {
  source            = "../../modules/ecs"
  cluster_name      = "prod-cluster"
  task_family       = "prod-task"
  container_definitions = jsonencode([{
    name  = "app"
    image = "nginx"
    cpu   = 512
    memory = 1024
    essential = true
    portMappings = [{
      containerPort = 80
      hostPort      = 80
    }]
  }])
  environment = "prod"
}

module "rds" {
  source            = "../../modules/rds"
  db_name           = "proddb"
  username          = "admin"
  password          = "prodpassword"
  environment       = "prod"
}

module "iam" {
  source            = "../../modules/iam"
  role_name         = "prod-role"
  environment       = "prod"
}

module "security" {
  source            = "../../modules/security"
  vpc_id            = "vpc-12345"
  environment       = "prod"
}
