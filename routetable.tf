resource "aws_route_table" "terraform-public" {
  vpc_id = aws_vpc.vpc01.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet1-public.id
  route_table_id = aws_route_table.terraform-public.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.subnet2-public.id
  route_table_id = aws_route_table.terraform-public.id
}