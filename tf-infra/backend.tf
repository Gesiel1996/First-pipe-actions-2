terraform {
 backend "s3" {
  bucket         = "gesiel1996-hithub-actions"
    key            = "path/to/my/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "gesiel1996-sa-east-1-terraform-lock" # Optional, for state locking
    encrypt        = true

 }
}