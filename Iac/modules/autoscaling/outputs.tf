output "autoscaling_group_id" {
  description = "ID of the created Auto Scaling Group"
  value       = aws_autoscaling_group.autoscaling_group.id
}
