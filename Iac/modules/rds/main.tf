resource "aws_db_instance" "rds_instance" {
  engine            = var.rds_engine
  instance_class    = var.rds_instance_class
  allocated_storage = var.rds_allocated_storage
  db_subnet_group_name = var.rds_subnet_group_name
}
