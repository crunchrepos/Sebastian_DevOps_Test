output "ecs_cluster_id" {
  description = "ID of the created ECS cluster"
  value       = aws_ecs_cluster.ecs_cluster.id
}
