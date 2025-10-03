resource "aws_s3_bucket" "meu-primeiro-GitHub-Actions" {
  bucket = var.bucket_name

  tags = {
    Name        = "My example bucket for GitHub Actions"
    Environment = "main"
  }
}

