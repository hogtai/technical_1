output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = aws_lb.main.dns_name
}

output "alb_arn" {
  description = "The ARN of the Load Balancer"
  value       = aws_lb.main.arn
}

output "target_group_arn" {
  description = "The ARN of the Target Group"
  value       = aws_lb_target_group.backend.arn
}
