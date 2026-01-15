resource "aws_vpc" "lab_vpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "lab_vpc"
  }
}
