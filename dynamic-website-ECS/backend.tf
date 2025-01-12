# this is to store the terraform state file in s3
terraform {
  backend "s3" {
    bucket  = "ikeboy-12345"
    key     = "terraform-module"
    region  = "us-east-1"
    profile = "default"
    dynamodb_table = "Terraform-state-lock"
  }
}