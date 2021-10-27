The above terraform scripts are used to deploy resources required for petclinic application to run in AWS cloud.

![alt text](https://github.com/kmanvitha30/terraform-petclinic/blob/master/terraform_pipeline.png)

## Resources Created:
### VPC Module
```
 - VPC
 - subnets
 - Route Tables
 - Internet Gateway
 - NAT Gateway
 - Routes
 - Route Table Association
```
### AWS Key Pair


### EKS Module
```
- IAM roles
- IAM role policy attachments
- EKS cluster
- EKS node group
```

### RDS Module
```
- DB subnet group
- Postgresql DB
```

### SecurityGroup Module
```
- Security group with ingress and egress rules
```

## Pre-Requisities:
The machine from which the automation script is executed should have terraform and git installed.
```
VERSION=0.14.0
sudo wget https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip -P /tmp
sudo unzip /tmp/terraform_${VERSION}_linux_amd64.zip -d /usr/bin/
terraform –v

sudo yum install git
git --version
```

## Usage:
1. Clone the git repository and make terraform-petclinic as current working directory.
```
git clone https://github.com/kmanvitha30/terraform-petclinic.git
cd terraform-petclinic/
```

2. Update the files key.pub and terraform.tfvars with the respective values.

3. Export AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY as environment variables.
```
export AWS_ACCESS_KEY_ID="<access_key_value>"
export AWS_SECRET_ACCESS_KEY="<secret_key_value>"
```
4. Execute the .tf files
```
terraform init
terraform plan -out tfapply
terraform apply -auto-approve tfapply
```

5. To destroy the infra
```
terraform destroy -auto-approve
```


