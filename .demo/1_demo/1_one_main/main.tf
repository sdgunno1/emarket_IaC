## Define provider block
provider "aws" {
  region  = "ap-northeast-2"
}

# Define resource block
resource "aws_instance" "my_server" {
  ami           = "ami-0225bc2990c54ce9a"  # ubuntu 20.04
  instance_type = "t2.micro"
}

# Define output block
output "my_ec2_id" {
  value       = aws_instance.my_server.id
  description = "my ec2 instance's resource id"
}


