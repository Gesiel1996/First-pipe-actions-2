terraform {
 backend "s3" {

  bucket         = "my-terraform-state-bucket"
    key            = "path/to/my/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-terraform-lock-table" # Optional, for state locking
    encrypt        = true

 }
}