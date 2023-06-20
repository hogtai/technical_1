variable "region" {
  description = "The AWS region where resources should be created"
  type        = string
}

variable "alb_name" {
  description = "The name of the Application Load Balancer"
  type        = string
}

variable "subnet_ids" {
  description = "The IDs of the public subnets where the ALB should be launched"
  type        = list(string)
}

variable "security_group_id" {
  description = "The ID of the security group to attach to the ALB"
  type        = string
}

variable "listen_port" {
  description = "The port on which the load balancer is listening"
}

variable "target_group_name" {
  description = "The name of the target group"
  type        = string
}

variable "target_port" {
  description = "The port on which the targets receive traffic"
}

variable "vpc_id" {
  description = "The ID of the VPC in which to create the target group"
  type        = string
}

variable "target_ids" {
  description = "The instance IDs to be added to the target group"
  type        = list(string)
}
