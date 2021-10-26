aws_region                = "us-east-1"
app_name                  = "petclinic"
access_key                = "aws-access-key"
secret_key                = "aws-secret-key"
vpc_cidr_block            = "10.0.0.0/16"
availability_zones        = ["us-east-1a", "us-east-1b"]
public_subnet_cidr_block  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidr_block = ["10.0.3.0/24", "10.0.4.0/24"]
public_key_path           = "key.pub"
eks_worker_instance_type  = "t2.micro"
eks_worker_disk_size      = "5"
db_engine                 = "postgres"
db_engine_version         = "12.5"
db_instance_class         = "db.t2.micro"
db_master_username        = "postgres"
db_master_password        = "petclinic"