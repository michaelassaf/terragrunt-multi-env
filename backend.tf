# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "pathing-terraform-state"
    dynamodb_table = "pathing-lock-table"
    encrypt        = true
    key            = "environments/.//terraform.tfstate"
    region         = "us-east-1"
  }
}
