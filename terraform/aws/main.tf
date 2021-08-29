terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      # version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = var.aws_region
}

data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_instance" "test_server" {
  ami           = "ami-050949f5d3aede071"
  instance_type = "t2.micro"

  tags = {
    Name = "TestServer"
  }
}
