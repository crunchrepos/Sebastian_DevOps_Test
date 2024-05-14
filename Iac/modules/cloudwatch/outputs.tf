output "log_group_name" {
  description = "Name of the CloudWatch Log Group"
  value       = aws_cloudwatch_log_group.example.name
}

output "alarm_name" {
  description = "Name of the CloudWatch Alarm"
  value       = aws_cloudwatch_metric_alarm.example.alarm_name
}
