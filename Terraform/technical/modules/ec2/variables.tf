variable "region" {
  description = "The AWS region where resources should be created"
}

variable "windows_ami" {
  description = "The ID of the Windows Server 2019 AMI"
}

variable "bastion_instance_type" {
  description = "The instance type for the bastion instance"
}

variable "bastion_instance_name" {
  description = "The instance name for the bastion instance"
}

variable "bastion_volume_size" {
  description = "The volume size for the bastion instance"
}

variable "key_pair_name" {
  description = "The name of the existing key pair for SSH access"
}

variable "public_subnet" {
  description = "The ID of the public subnet where the bastion instance will be launched"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group to attach to the EC2 instance"
  type        = string
}
