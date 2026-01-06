resource "aws_s3_bucket" "my_s3" {
    bucket = "my-unique-bucket-name-1232880"
}

output "s3_arn" {
    value = aws_s3_bucket.my_s3.arn
}