variable "private_subnet_ids" {
  description = "id's of the private subnets in the vpc"
}

variable "postgres-db-sg-id" {
  description = "security group id of petclinic postgres db"
}

variable "engine" {
  description = "The database engine to use"
}

variable "engine_version" {
  description = "The engine version to use"
}

variable "instance_class" {
  description = "DB instance class "
}

variable "master_username" {
  description = "master username for the DB instance"
}

variable "master_password" {
  description = "master password for the DB instance"
}

variable "availability_zones" {
  description = "The Availability Zone of the RDS instance"
}