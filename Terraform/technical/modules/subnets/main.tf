terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.4.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.5.1"
    }
  }
}

resource "aws_subnet" "subnet" {
  count                   = length(var.subnet_cidrs)
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_cidrs[count.index]
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone       = var.availability_zones[count.index]

  tags = {
    Name = var.subnet_names[count.index]
  }
}

