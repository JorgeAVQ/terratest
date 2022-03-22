terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
    access_key = "AKIATFDJ7ODOF5RFOHPT"
    secret_key = "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"
    region = "us-east-1"
}
resource "aws_instance" "hello-instance" {
  ami = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  tags = {
    Name = "hello-instance"
  }
}
