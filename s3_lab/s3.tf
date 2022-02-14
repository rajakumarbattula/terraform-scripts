resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-tf-test-bucket-2-7-2022"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}