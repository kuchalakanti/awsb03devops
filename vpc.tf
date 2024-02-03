resource "aws_vpc" "vpc01" {
    cidr_block = var.vpc_cidr
    tags = {
      name = var.vpc_name
    }
  
}

resource "aws_subnet" "subnet1-public" {
  vpc_id     = aws_vpc.vpc01.id
  cidr_block = var.sub-range
  availability_zone = "us-east-1a"

  tags = {
    Name = "${var.vpc_name}-public-subnet"
  }
}

resource "aws_subnet" "subnet2-public" {
  vpc_id     = aws_vpc.vpc01.id
  cidr_block = var.sub-range2

  tags = {
    Name = "${var.vpc_name}-public-subnet2"
  }
}