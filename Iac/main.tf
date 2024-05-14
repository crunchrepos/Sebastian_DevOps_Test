provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

# VPC module
module "vpc" {
  source = "./modules/vpc"
  # You can pass variables here if needed
}

# EC2 or ECS module for container orchestration
module "container_orchestration" {
  source = "./modules/ecs"  # Change to the appropriate module (EC2 or ECS)
  # You can pass variables here if needed
  subnet_ids = module.vpc.public_subnet_ids  # Example of passing subnet IDs
}

# RDS module for PostgreSQL database
module "database" {
  source = "./modules/rds"
  # You can pass variables here if needed
  subnet_ids = module.vpc.private_subnet_ids  # Example of passing subnet IDs
}

# ALB module for load balancer
module "load_balancer" {
  source = "./modules/alb"
  # You can pass variables here if needed
  subnet_ids = module.vpc.public_subnet_ids  # Example of passing subnet IDs
}

# Auto Scaling module
module "autoscaling" {
  source = "./modules/autoscaling"
  # You can pass variables here if needed
  vpc_zone_identifier = module.vpc.public_subnet_ids  # Example of passing subnet IDs
  target_group_arn   = module.load_balancer.alb_target_group_arn  # Example of passing ALB target group ARN
}
