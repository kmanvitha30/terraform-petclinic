variable "public_subnet_ids" {
  description = "vpc public subnet ids"
}

variable "private_subnet_ids" {
  description = "vpc private subnet ids"
}

variable "eks_worker_instance_type" {
  description = "instance type for eks worker node"  
}
variable "eks_worker_disk_size" {
  description = "disk size for eks worker node"
}

variable "key_name" {
  description = "SSH Key name"
}