resource "aws_internet_gateway" "sst_mysql_main_igw" {
  vpc_id = aws_vpc.sst_mysql_vpc.id

  tags = {
    Name = "SSTMySQLIGW"
  }
}

resource "aws_route_table" "main_route_table" {
  vpc_id = aws_vpc.sst_mysql_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sst_mysql_main_igw.id
  }

  tags = {
    Name = "SSTMYSQLIGWMainRouteTable"
  }
}

resource "aws_route_table_association" "rta_a" {
  subnet_id      = aws_subnet.sst_mysql_main_subnet.id
  route_table_id = aws_route_table.main_route_table.id
}

resource "aws_route_table_association" "rta_b" {
  subnet_id      = aws_subnet.sst_secondary_secondary_subnet.id
  route_table_id = aws_route_table.main_route_table.id
}