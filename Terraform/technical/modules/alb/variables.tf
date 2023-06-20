variable "region" {
  description = "The AWS region where resources should be created"
  type        = string
  default     = "us-east-2"
}

variable "alb_name" {
  description = "The name of the Application Load Balancer"
  type        = string
  default     = "myalb"
}

variable "subnet_ids" {
  description = "The IDs of the public subnets where the ALB should be launched"
  type        = list(string)
  default     = ["subnet-00357a656e7b205e9", "subnet-0904bc13a733c1e71"]
}

variable "security_group_id" {
  description = "The ID of the security group to attach to the ALB"
  type        = string
  default     = "sg-0655f11e111f4324a"
}

variable "listen_port" {
  description = "The port on which the load balancer is listening"
  default     = 443
}

variable "target_group_name" {
  description = "The name of the target group"
  type        = string
  default     = "wpserver1-2-group"
}

variable "target_port" {
  description = "The port on which the targets receive traffic"
  default     = 443
}

variable "vpc_id" {
  description = "The ID of the VPC in which to create the target group"
  type        = string
  default     = "vpc-0aac118c66d435a96"
}

variable "target_ids" {
  description = "The instance IDs to be added to the target group"
  type        = list(string)
}
