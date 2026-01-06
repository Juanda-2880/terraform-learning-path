resource "aws_vpc" "my_vpc" {
    cidr_block = "10.0.0.0/16"
}

output "vpc_id" {
    value = aws_vpc.my_vpc.id
}