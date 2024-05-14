# Example VARS
# AWS Region
aws_region = "us-east-1"

# EC2 Instance Variables
ec2_ami           = "ami-1234567890"
ec2_instance_type = "t2.micro"
ec2_key_name      = "my-keypair"
ec2_subnet_id     = "subnet-1234567890"

# ECS Cluster Variables
ecs_cluster_name = "my-ecs-cluster"

# RDS Instance Variables
rds_engine                = "postgres"
rds_instance_class        = "db.t2.micro"
rds_allocated_storage     = 20
rds_subnet_group_name     = "my-db-subnet-group"

# ALB Variables
alb_name        = "my-alb"
alb_internal    = false
alb_type        = "application"
alb_subnets     = ["subnet-1234567890", "subnet-0987654321"]

# Auto Scaling Variables
autoscaling_group_name                 = "my-autoscaling-group"
autoscaling_subnets                   = ["subnet-1234567890", "subnet-0987654321"]
autoscaling_min_size                  = 2
autoscaling_max_size                  = 5
autoscaling_desired_capacity          = 2
autoscaling_health_check_type         = "EC2"
autoscaling_health_check_grace_period = 300
autoscaling_tag_name                  = "my-instance-tag"
launch_configuration_name_prefix     = "my-launch-config"
launch_configuration_image_id        = "ami-1234567890"
launch_configuration_instance_type   = "t2.micro"
launch_configuration_key_name        = "my-keypair"
launch_configuration_security_groups = ["sg-1234567890"]
launch_configuration_user_data       = ""
autoscaling_scale_out_adjustment      = 1
autoscaling_scale_out_cooldown        = 300
autoscaling_scale_in_adjustment       = -1
autoscaling_scale_in_cooldown         = 300
