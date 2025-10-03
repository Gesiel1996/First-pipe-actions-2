resource "aws_bucket" "example" {
  bucket = "${env}-var.bucket_name"
  acl    = "private"

  tags = {
    Name        = "My example bucket for GitHub Actions"
    Environment = "Dev/prd"
  }
}

