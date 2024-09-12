module "ecs" {
  source            = "../../modules/ecs"
  cluster_name      = "test-cluster"
  task_family       = "test-task"
  container_definitions = jsonencode([{
    name  = "app"
    image = "nginx"
    cpu   = 256
    memory = 512
    essential = true
    portMappings = [{
      containerPort = 80
      hostPort      = 80
    }]
  }])
  environment = "test"
}

module "rds" {
  source            = "../../modules/rds"
  db_name           = "testdb"
  username          = "admin"
  password          = "testpassword"
  environment       = "test"
}

module "iam" {
  source            = "../../modules/iam"
  role_name         = "test-role"
  environment       = "test"
}

module "security" {
  source            = "../../modules/security"
  vpc_id            = "vpc-12345"
  environment       = "test"
}
