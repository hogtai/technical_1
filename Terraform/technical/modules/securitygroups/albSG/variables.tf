variable "region" {
  description = "The region where AWS operations will take place. Examples are us-east-1, us-west-2, etc."
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

variable "inbound_port" {
  description = "The inbound port to be opened on the security group"
  type        = number
}

variable "vpc_id" {
  description = "The ID of the VPC in which the security group is to be created"
  type        = string
}

