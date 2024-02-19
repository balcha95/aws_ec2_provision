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
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"

  tags = {
    Name = "tfcloud"
  }
}
