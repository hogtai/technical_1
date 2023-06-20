output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = module.vpc_security_group.security_group_id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = module.public_subnets.public_subnet_ids
}

output "wp_subnet_ids" {
  description = "The IDs of the web application subnets"
  value       = module.wp_subnets.wp_subnet_ids
}

output "db_subnet_ids" {
  description = "The IDs of the DB subnets"
  value       = module.db_subnets.db_subnet_ids
}

output "wpserver1_instance_id" {
  description = "The ID of the first web application server instance"
  value       = module.wpserver1.instance_id
}

output "wpserver2_instance_id" {
  description = "The ID of the second web application server instance"
  value       = module.wpserver2.instance_id
}

output "rds_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = module.rds.db_instance_arn
}

output "alb_arn" {
  description = "The ARN of the Application Load Balancer"
  value       = module.alb.alb_arn
}

output "wpserver_security_group_id" {
  description = "The ID of the WP server security group"
  value       = module.wpserver_security_group.security_group_id
}

output "postgres_security_group_id" {
  description = "The ID of the PostgreSQL security group"
  value       = module.postgres_security_group.security_group_id
}

output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = module.alb.alb_dns_name
}

output "target_group_arn" {
  description = "The ARN of the Target Group"
  value       = module.alb.target_group_arn
}

output "alb_security_group_id" {
  description = "The ID of the ALB security group"
  value       = module.alb_security_group.security_group_id
}
