terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "random_string" "bastionSG_suffix" {
  length  = 8
  special = false
  upper   = false
}

resource "aws_security_group" "bastionSG" {
  name        = "bastionSG-${random_string.bastionSG_suffix.result}"
  description = "Security group for bastion instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "bastion" {
  ami                         = var.windows_ami
  instance_type               = var.bastion_instance_type
  subnet_id                   = var.public_subnet
  key_name                    = var.key_pair_name
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.bastionSG.id]
  tags = {
    Name = var.bastion_instance_name
  }

  root_block_device {
    volume_size = var.bastion_volume_size
  }
}
