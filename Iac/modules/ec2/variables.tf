variable "ec2_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "ec2_instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
}

variable "ec2_key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "ec2_subnet_id" {
  description = "Subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "ec2_instance_name" {
  description = "Name for the EC2 instance"
  type        = string
}
