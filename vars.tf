variable "app_name" {
  description = "Name of the application"
}

variable "aws_region" {
  description = "AWS region"
}

variable "access_key" {
  description = "IAM user access key"
}

variable "secret_key" {
  description = "IAM user secret key"
}

variable "vpc_cidr_block" {
  description = "CIDR for the VPC"
}

variable "availability_zones" {
  description = "list of availability zones"
}

variable "public_subnet_cidr_block" {
  description = "CIDR for the public subnets"
}

variable "private_subnet_cidr_block" {
  description = "CIDR for the private subnets"
}

variable "public_key_path" {
  description = "SSH Public Key path"
}

variable "eks_worker_instance_type" {
  description = "instance type for eks worker node"
}
variable "eks_worker_disk_size" {
  description = "disk size for eks worker node"
}

variable "db_engine" {
  description = "The database engine to use"
}

variable "db_engine_version" {
  description = "The engine version to use"
}

variable "db_instance_class" {
  description = "DB instance class "
}

variable "db_master_username" {
  description = "master username for the DB instance"
}

variable "db_master_password" {
  description = "master password for the DB instance"
}