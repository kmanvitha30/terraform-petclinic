terraform {
  backend "s3" {
    bucket = "petclinic-remotestate"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}