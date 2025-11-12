resource "aws_s3_bucket" "github-actions-1241564546514" {
  bucket = var.bucket_name
}
resource "aws_iam_role" "ssm_role" {
  name = "SSMRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}


resource "aws_instance" "tetris" {

  instance_type = "t2.micro"
  key_name      = "key-lab"
  monitoring    = false
  subnet_id     = "subnet-01614604c864094bf"
  ami           = "ami-0ecb62995f68bb549"
  iam_instance_profile = "SSMInstanceProfileforTetris" # Referencing an existing profile

  tags = { 
    Name = "ec2-for-game-tetris"
   } 
} 

resource "aws_iam_instance_profile"  "ssm_profile" { 
  name = "SSMInstanceProfileforTetris"
   role = aws_iam_role.ssm_role.name 
}

resource "aws_iam_role_policy_attachment"  "ssm_attach" { 
  role = aws_iam_role.ssm_role.name 
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
 } 





