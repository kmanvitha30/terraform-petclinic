# petclinic postgresql db subnet
resource "aws_db_subnet_group" "db_subnet" {
  name       = "petclinic db subnet"
  subnet_ids = var.private_subnet_ids
  tags = {
    Name = "petclinic DB subnet"
  }
}

# petclinic postgresql DB
resource "aws_db_instance" "postgresql-db" {
  allocated_storage       = 20
  identifier              = "petclinic"
  storage_type            = "gp2"
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  name                    = "petclinic"
  username                = var.master_username
  password                = var.master_password
  db_subnet_group_name    = aws_db_subnet_group.db_subnet.id
  availability_zone       = var.availability_zones[0]
  vpc_security_group_ids  = [var.postgres-db-sg-id]
  backup_retention_period = 30
  skip_final_snapshot     = true
}