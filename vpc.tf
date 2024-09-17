resource "aws_vpc" "sst_mysql_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "SSTMySQLVPC"
  }
}

resource "aws_subnet" "sst_mysql_main_subnet" {
  vpc_id            = aws_vpc.sst_mysql_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "SstMysqlMainSubnet",
    Tier = "Main"
  }
}
resource "aws_subnet" "sst_secondary_secondary_subnet" {
  vpc_id            = aws_vpc.sst_mysql_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "SecondarySSTMysqlSubnet",
    Tier = "Secondary"
  }
}

resource "aws_db_subnet_group" "sst_main_subnet_group" {
  name       = "sst-mysql-main-subnet-group"
  subnet_ids = [aws_subnet.sst_mysql_main_subnet.id, aws_subnet.sst_secondary_secondary_subnet.id]

  tags = {
    Name = "MainSSTMysqlSubnetGroup"
  }
}
