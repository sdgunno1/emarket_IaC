## Define provider block
provider "aws" {
  region  = "ap-northeast-2"
}

## Define terraform block
terraform {
  backend "s3" {
    bucket = "jieon-terraform-bucket"
    key    = "demo3-2/terraform.tfstate"
    region = "ap-northeast-2"
  }
}
