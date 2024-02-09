provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = "ap-northeast-1"
}

module "vpc" {
  source = "git::https://github.com/cocoa-maemae/terraform-aws-vpc-testmodule.git"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  nat_instance_ami         = "ami-0af1df87db7b650f4"
  nat_instance_type        = "t2.micro"
  nat_instance_volume_type = "gp2"
  nat_instance_volume_size = "30"

  azs             = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
  private_subnets = ["10.10.0.0/24", "10.10.1.0/24", "10.10.2.0/24"]
  public_subnets  = ["10.10.10.0/24", "10.10.11.0/24", "10.10.12.0/24"]
}
