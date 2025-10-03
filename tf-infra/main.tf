resource "aws_s3_bucket" "github-actions-1241564546514" {
  bucket = var.bucket_name

  tags = {
    Name        = "My example bucket for GitHub Actions"
    Environment = "main"
  }
}

