terraform {
 backend "s3" {
  bucket         = "gesiel1996-hithub-actions"
    key            = "path/to/my/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true

 }
}