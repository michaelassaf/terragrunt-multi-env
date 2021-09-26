resource "aws_s3_bucket" "b" {
  bucket = "pathing-${var.env}"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
