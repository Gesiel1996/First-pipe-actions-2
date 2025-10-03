resource "aws_bucket" "example" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = "My example bucket for GitHub Actions"
    Environment = "Dev/prd"
  }
}

