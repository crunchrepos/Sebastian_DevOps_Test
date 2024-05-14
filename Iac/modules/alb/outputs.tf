output "alb_dns_name" {
  description = "DNS name of the created ALB"
  value       = aws_lb.alb.dns_name
}
