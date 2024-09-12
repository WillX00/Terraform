provider "aws" {
  region = var.region
}

module "ecs_cluster" {
  source = "./modules/ecs"
  cluster_name = var.cluster_name
}

module "rds" {
  source = "./modules/rds"
  db_name = var.db_name
}

module "iam" {
  source = "./modules/iam"
}

module "security" {
  source = "./modules/security"
}
