output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.bastion_sg.id
}

