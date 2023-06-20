variable "region" {
  description = "The AWS region"
  type        = string
}

variable "security_group_name" {
  description = "The name of the security group"
  type        = string
}

variable "security_group_description" {
  description = "The description of the security group"
  type        = string
}

variable "bastion_inbound_ports" {
  description = "List of inbound ports to be allowed in the security group"
  type        = list(number)
}

variable "vpc_id" {
  description = "The ID of the VPC in which to create the security group"
  type        = string
}