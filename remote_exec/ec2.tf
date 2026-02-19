resource "aws_instance" "myec2exacmmple2889" {
    ami = "ami-06f1fc9ae5ae7f31e"
    associate_public_ip_address = true
    availability_zone = "us-east-2a"
    instance_type = "t3.micro"
    key_name = "keyname"
    #user_data = file("${path.module}/setup.sh")
    vpc_security_group_ids = ["SecurityGroupID allowing SSH inbound"]

    connection {
      type = "ssh"
      user = "ec2-user"
      private_key = file("path/to/private/key.pem")
      host = self.public_ip
    }
/*
    provisioner "local-exec" {
        command = "echo ${self.public_ip} > public_ip.txt"
    }
*/
    provisioner "remote-exec" {
        inline = [
            "sudo yum update -y",
            "sudo yum install -y httpd",
            "sudo systemctl start httpd",
            "sudo systemctl enable httpd"
        ]
      
    }
}

output "instance_DNS" {
    value = aws_instance.myec2exacmmple2889.public_dns
  
}