terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_KEY_ID" {}

provider "aws" {
  region     = "us-east-2"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_KEY_ID
}

resource "aws_instance" "instance-terraformcloud" {
    ami = "ami-0fb653ca2d3203ac1"
    instance_type = "t2.micro"
    tags = {
        Name = "terraformcloud"
    }
}
