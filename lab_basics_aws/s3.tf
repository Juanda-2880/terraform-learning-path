resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket-terraform-practice-123abc"

  tags = {
    Name        = "My bucket"
  }
}