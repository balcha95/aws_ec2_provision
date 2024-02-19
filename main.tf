terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.34.0"
    }
  }
}

# AWS Provider (aws) with region set to 'us-east-1'
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example_server" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = "tfcloud"
  }
}
