variable "alb_name" {
  description = "Name for the Application Load Balancer"
  type        = string
}

variable "alb_internal" {
  description = "Specify if the ALB should be internal (true/false)"
  type        = bool
}

variable "alb_type" {
  description = "Type of the load balancer"
  type        = string
}

variable "alb_subnets" {
  description = "List of subnets IDs where the ALB will be placed"
  type        = list(string)
}
