resource "aws_instance" "example" {
    ami = "ami-b56jgr5tjkt35"
    instance_type = "t3.micro"
    count = var.environment == "dev" ? 2 : 0
}