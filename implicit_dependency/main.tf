provider "aws" {
  region = "us-east-2"
}

resource "aws_eip" "myeip" {
  domain = "vpc"
  instance = aws_instance.myec2abc.id
}

resource "aws_instance" "myec2abc"{
    instance_type = "t2.micro"
    ami = "ami-0c55b159cbfafe1f0"
}