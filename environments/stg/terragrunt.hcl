include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../src"
}

inputs = {
  region     = "us-east-1"
}