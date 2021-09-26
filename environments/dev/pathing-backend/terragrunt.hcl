include {
  path = find_in_parent_folders()
}

terraform {
  source = "github.com/terraform-aws-modules/terraform-aws-ec2-instance"
}

inputs = {
  region  = "us-east-1"
  version = "~> 3.0"
  name    = "pathing-backend-dev"

  ami           = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"
  #key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-f2d028d2"]
  subnet_id              = "subnet-eb33bda6"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}