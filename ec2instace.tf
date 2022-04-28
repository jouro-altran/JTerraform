terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  version    = 3.6
  region = "us-east-1"
}

  resource "aws_instance" "devbox1"{
    ami           = "ami-0c94855ba95c71c99"
    instance_type = "t2.micro"
}
