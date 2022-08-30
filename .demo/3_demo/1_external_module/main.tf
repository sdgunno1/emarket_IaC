provider "aws" {
  region  = "ap-northeast-2"
}
 
module "vpc" {
  
  source = "terraform-aws-modules/vpc/aws"
  name   = "my-vpc-via-terraform"
  cidr   = "10.0.0.0/16"
 
  azs             = ["ap-northeast-2a", "ap-northeast-2c"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.10.0/24", "10.0.11.0/24"]
 
  enable_nat_gateway = false
 
  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
