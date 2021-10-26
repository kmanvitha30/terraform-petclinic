// Security group for petclinic postgresql db.
resource "aws_security_group" "petclinic-postgresql-sg" {
  name        = "petclinic-postgresql-sg"
  description = "Allows traffic from within the vpc"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "TCP"
    cidr_blocks = [var.vpc_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "petclinic-postgresql-sg"
  }
}