provider "aws" {
  region = var.aws_region
}


terraform {
  backend "s3" {
    bucket = "jieon-terraform-bucket" 
    key    = "demo3-2/terraform.tfstate"
    region = "ap-northeast-2"

#    dynamodb_table = "terraform-lock"
  }
}

