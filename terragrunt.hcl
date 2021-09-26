remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "pathing-terraform-state"

    key            = "environments/${local.env}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "pathing-lock-table"
  }
}

locals {
  env = replace(path_relative_to_include(), "environments/", "")
}

inputs = {
  env = local.env
}