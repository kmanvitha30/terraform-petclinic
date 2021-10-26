variable "app_name" {
  description = "Name of the application"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
}

variable "availability_zones" {
  description = "List of availability zones"
}

variable "public_subnet_cidr_block" {
  description = "CIDR for the public subnets"
}

variable "private_subnet_cidr_block" {
  description = "CIDR for the private subnets"
}