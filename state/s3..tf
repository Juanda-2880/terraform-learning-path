resource "aws_s3_bucket" "my_bucket" {
    bucket = "my-unique-bucket-name-1234562880"

    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
  
}