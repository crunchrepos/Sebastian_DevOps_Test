# Create CloudWatch Log Group
resource "aws_cloudwatch_log_group" "example" {
  name              = var.log_group_name
  retention_in_days = var.retention_in_days
}

# Create CloudWatch Alarm
resource "aws_cloudwatch_metric_alarm" "example" {
  alarm_name          = var.alarm_name
  comparison_operator = var.comparison_operator
  evaluation_periods  = var.evaluation_periods
  metric_name         = var.metric_name
  namespace           = var.namespace
  period              = var.period
  statistic           = var.statistic
  threshold           = var.threshold
  alarm_description   = var.alarm_description
  alarm_actions       = var.alarm_actions

  dimensions = {
    ExampleDimension = "ExampleValue"
  }

  metric_query {
    id          = "e1"
    expression  = "SUM(Errors)"
    label       = "ErrorCount"
    return_data = false
  }
}
