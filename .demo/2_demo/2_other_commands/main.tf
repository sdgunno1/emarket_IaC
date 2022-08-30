# Define resource block
source "aws_instance" "my_server" {
ami           = var.my_ami
instance_type = var.my_instance_type

tags = {
Name = "my_ec2_server"
}
}

