include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../src"
}

inputs = {
  region     = "us-east-1"
  access_key = "AKIAXRXLOENFEGZSQFOH"
  secret_key = "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"
}