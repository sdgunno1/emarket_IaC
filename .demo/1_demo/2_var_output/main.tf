## Define provider block
provider "aws" {
  region  = "ap-northeast-2"
}

# Define resource block
resource "aws_instance" "my_server" {
  ami           = var.my_ami 
  instance_type = var.my_instance_type
}

