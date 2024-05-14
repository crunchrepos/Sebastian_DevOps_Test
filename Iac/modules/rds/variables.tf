variable "rds_engine" {
  description = "Database engine for the RDS instance"
  type        = string
}

variable "rds_instance_class" {
  description = "Instance class for the RDS instance"
  type        = string
}

variable "rds_allocated_storage" {
  description = "Allocated storage for the RDS instance"
  type        = number
}

variable "rds_subnet_group_name" {
  description = "Name of the DB subnet group"
  type        = string
}
