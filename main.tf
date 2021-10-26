module "vpc" {
  source                    = "./modules/vpc"
  app_name                  = var.app_name
  vpc_cidr_block            = var.vpc_cidr_block
  availability_zones        = var.availability_zones
  public_subnet_cidr_block  = var.public_subnet_cidr_block
  private_subnet_cidr_block = var.private_subnet_cidr_block
}

resource "aws_key_pair" "key" {
  key_name   = "petclinic-key"
  public_key = file(var.public_key_path)
}


module "eks" {
  source                   = "./modules/eks"
  public_subnet_ids        = module.vpc.public_subnet_ids
  private_subnet_ids       = module.vpc.private_subnet_ids
  eks_worker_instance_type = var.eks_worker_instance_type
  eks_worker_disk_size     = var.eks_worker_disk_size
  key_name                 = aws_key_pair.key.key_name
}

module "securitygroups" {
  source = "./modules/securitygroups"
  vpc_id = module.vpc.vpc-id
  vpc_cidr_block = var.vpc_cidr_block 
}

module "rds" {
  source             = "./modules/rds"
  private_subnet_ids = module.vpc.private_subnet_ids
  postgres-db-sg-id  = module.securitygroups.postgres-db-sg-id
  engine             = var.db_engine
  engine_version     = var.db_engine_version
  instance_class     = var.db_instance_class
  master_username    = var.db_master_username
  master_password    = var.db_master_password
  availability_zones = var.availability_zones
}