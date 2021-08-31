provider "aws" {
  region = "us-east-2"
}

module "vpc" {
  source     = "git::https://github.com/cloudposse/terraform-aws-vpc.git?ref=0.25.0"
  cidr_block = "10.100.50.0/23"
  providers = {
    aws = aws
  }
}
