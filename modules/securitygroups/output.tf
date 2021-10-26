output "postgres-db-sg-id" {
  value = aws_security_group.petclinic-postgresql-sg.id
}