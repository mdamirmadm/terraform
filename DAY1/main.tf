terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16" #It allows updates to patch versions (the third part of the version number) and minor versions (the second part of the version number), but it does not allow updates to the next major version.The range is equivalent to >= 4.16.0, < 5.0.0.
    }
  }

  required_version = ">= 1.2.0" #This constraint means that the Terraform CLI version must be at least 1.2.0 or newer.

}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "expmple" {
  ami           = "ami-09b0a86a2c84101e1"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleServerInstance"
    }
}