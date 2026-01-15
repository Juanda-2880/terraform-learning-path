resource "aws_subnet" "lab_subnet" {
  vpc_id            = aws_vpc.lab_vpc.id
  cidr_block        = "10.0.2.0/24"

  tags = {
    Name = "lab_subnet"
  }
}