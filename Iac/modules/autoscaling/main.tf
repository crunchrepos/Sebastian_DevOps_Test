resource "aws_autoscaling_group" "autoscaling_group" {
  name                 = var.autoscaling_group_name
  vpc_zone_identifier  = var.autoscaling_subnets
  min_size             = var.autoscaling_min_size
  max_size             = var.autoscaling_max_size
  desired_capacity     = var.autoscaling_desired_capacity
  health_check_type    = var.autoscaling_health_check_type
  health_check_grace_period = var.autoscaling_health_check_grace_period
  launch_configuration = aws_launch_configuration.launch_configuration.name
  tag {
    key                 = "Name"
    value               = var.autoscaling_tag_name
    propagate_at_launch = true
  }
}

resource "aws_launch_configuration" "launch_configuration" {
  name_prefix          = var.launch_configuration_name_prefix
  image_id             = var.launch_configuration_image_id
  instance_type        = var.launch_configuration_instance_type
  key_name             = var.launch_configuration_key_name
  security_groups      = var.launch_configuration_security_groups
  user_data            = var.launch_configuration_user_data
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_policy" "scale_out_policy" {
  name                  = "scale-out-policy"
  scaling_adjustment    = var.autoscaling_scale_out_adjustment
  adjustment_type       = "ChangeInCapacity"
  cooldown              = var.autoscaling_scale_out_cooldown
  autoscaling_group_name = aws_autoscaling_group.autoscaling_group.name
}

resource "aws_autoscaling_policy" "scale_in_policy" {
  name                  = "scale-in-policy"
  scaling_adjustment    = var.autoscaling_scale_in_adjustment
  adjustment_type       = "ChangeInCapacity"
  cooldown              = var.autoscaling_scale_in_cooldown
  autoscaling_group_name = aws_autoscaling_group.autoscaling_group.name
}
