terraform{

 backend "s3" {
  bucket = "bucket-for-githubactions-example"
  key    = "lockID/${env}/terraform.lock"
  region = "us-east-1"
   }
}