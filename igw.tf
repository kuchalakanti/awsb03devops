resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc01.id

  tags = {
    Name = "terra03-igw"
  }
}