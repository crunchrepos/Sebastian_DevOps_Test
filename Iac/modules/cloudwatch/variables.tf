variable "log_group_name" {
  description = "Name of the CloudWatch Log Group"
  type        = string
  default     = "/ecs/myapp"
}

variable "retention_in_days" {
  description = "Retention period for CloudWatch logs in days"
  type        = number
  default     = 30
}

variable "alarm_name" {
  description = "Name of the CloudWatch Alarm"
  type        = string
  default     = "HighErrorRateAlarm"
}

variable "comparison_operator" {
  description = "Comparison operator for the CloudWatch Alarm"
  type        = string
  default     = "GreaterThanOrEqualToThreshold"
}

variable "evaluation_periods" {
  description = "Number of periods over which data is compared for the CloudWatch Alarm"
  type        = number
  default     = 1
}

variable "metric_name" {
  description = "Name of the metric for the CloudWatch Alarm"
  type        = string
  default     = "Errors"
}

variable "namespace" {
  description = "Namespace of the metric for the CloudWatch Alarm"
  type        = string
  default     = "MyAppNamespace"
}

variable "period" {
  description = "Period in seconds for the CloudWatch Alarm"
  type        = number
  default     = 60
}

variable "statistic" {
  description = "Statistic to apply to the metric for the CloudWatch Alarm"
  type        = string
  default     = "Sum"
}

variable "threshold" {
  description = "Threshold value for the CloudWatch Alarm"
  type        = number
  default     = 10
}

variable "alarm_description" {
  description = "Description for the CloudWatch Alarm"
  type        = string
  default     = "Alarm triggered when error rate exceeds threshold"
}

variable "alarm_actions" {
  description = "List of actions to perform when the CloudWatch Alarm is triggered"
  type        = list(string)
  default     = []
}
