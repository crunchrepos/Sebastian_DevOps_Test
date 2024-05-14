output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "ec2_instance_id" {
  description = "ID of the created EC2 instance (if using EC2)"
  value       = module.container_orchestration.ec2_instance_id
}

output "ecs_cluster_id" {
  description = "ID of the created ECS cluster (if using ECS)"
  value       = module.container_orchestration.ecs_cluster_id
}

output "rds_instance_id" {
  description = "ID of the created RDS instance"
  value       = module.database.rds_instance_id
}

output "alb_dns_name" {
  description = "DNS name of the created ALB"
  value       = module.load_balancer.alb_dns_name
}

output "autoscaling_group_id" {
  description = "ID of the created Auto Scaling Group"
  value       = module.autoscaling.autoscaling_group_id
}
