variable "autoscaling_group_name" {
  description = "Name for the Auto Scaling Group"
  type        = string
}

variable "autoscaling_subnets" {
  description = "List of subnet IDs for the Auto Scaling Group"
  type        = list(string)
}

variable "autoscaling_min_size" {
  description = "Minimum number of instances in the Auto Scaling Group"
  type        = number
}

variable "autoscaling_max_size" {
  description = "Maximum number of instances in the Auto Scaling Group"
  type        = number
}

variable "autoscaling_desired_capacity" {
  description = "Desired number of instances in the Auto Scaling Group"
  type        = number
}

variable "autoscaling_health_check_type" {
  description = "Health check type for the Auto Scaling Group"
  type        = string
}

variable "autoscaling_health_check_grace_period" {
  description = "Health check grace period for the Auto Scaling Group"
  type        = number
}

variable "autoscaling_tag_name" {
  description = "Name tag for instances in the Auto Scaling Group"
  type        = string
}

variable "launch_configuration_name_prefix" {
  description = "Prefix for the name of the Launch Configuration"
  type        = string
}

variable "launch_configuration_image_id" {
  description = "AMI ID for the Launch Configuration"
  type        = string
}

variable "launch_configuration_instance_type" {
  description = "Instance type for the Launch Configuration"
  type        = string
}

variable "launch_configuration_key_name" {
  description = "Key pair name for SSH access in the Launch Configuration"
  type        = string
}

variable "launch_configuration_security_groups" {
  description = "Security groups for the Launch Configuration"
  type        = list(string)
}

variable "launch_configuration_user_data" {
  description = "User data for the Launch Configuration"
  type        = string
}

variable "autoscaling_scale_out_adjustment" {
  description = "Number of instances to scale out by"
  type        = number
}

variable "autoscaling_scale_out_cooldown" {
  description = "Cooldown period for scaling out (in seconds)"
  type        = number
}

variable "autoscaling_scale_in_adjustment" {
  description = "Number of instances to scale in by"
  type        = number
}

variable "autoscaling_scale_in_cooldown" {
  description = "Cooldown period for scaling in (in seconds)"
  type        = number
}
