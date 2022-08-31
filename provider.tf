terraform {
  backend "s3" {
    bucket = "sdgunno11-terraform-2022"
    key    = "emarket/terraform.tfstate"
    region = "us-east-1"
  }
  required_version = ">=1.1.3"
}

provider "aws" {
  region = var.aws_region
}
