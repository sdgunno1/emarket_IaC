data "aws_availability_zones" "available" {}

resource "aws_vpc" "terra" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "my-terraform-vpc"
  }
}

resource "aws_subnet" "public" {
  count = 2               # Repeat the code block below twice

  vpc_id                  = aws_vpc.terra.id
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  cidr_block              = "10.0.${count.index}.0/24"
  map_public_ip_on_launch = true

  tags = {
    "Name" = "my-terraform-public-subnet${count.index+1}"
  }
}

resource "aws_subnet" "private" {
  count = 2               # Repeat the code block below twice

  vpc_id                  = aws_vpc.terra.id
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  cidr_block              = "10.0.1${count.index}.0/24"
  map_public_ip_on_launch = false

  tags = {
    "Name" = "my-terraform-private-subnet${count.index+1}"
  }
}
