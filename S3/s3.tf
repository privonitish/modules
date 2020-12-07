resource "aws_s3_bucket" "njoshi" {
  bucket =  "var.bucket"
  acl    = "private"

  tags = {
    Name        = "njoshi-bucket"
    Environment = "Dev"
  }
}