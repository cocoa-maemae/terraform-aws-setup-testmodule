provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = "ap-northeast-1"
}

module "vpc" {
  source = "git::https://github.com/cocoa-maemae/terraform-aws-vpc-testmodule.git"
}
