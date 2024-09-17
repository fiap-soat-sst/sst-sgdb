provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "mysql_instance" {
  identifier           = "sst-mysql"
  instance_class       = "db.t3.medium"
  engine               = "mysql"
  engine_version       = "8.0"
  username             = var.username
  password             = var.password
  db_name              = var.db_name
  publicly_accessible  = true
  allocated_storage    = 10
  backup_retention_period = 5

  db_subnet_group_name    = aws_db_subnet_group.sst_main_subnet_group.name
  vpc_security_group_ids  = [aws_security_group.sst_mysql_security_group.id]

  skip_final_snapshot = true
}
