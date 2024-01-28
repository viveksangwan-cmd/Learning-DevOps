resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "main"
  }
}

resource "aws_vpc" "main-west" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  provider = aws.aws-west-1
  tags = {
    Name = "main"
  }
}