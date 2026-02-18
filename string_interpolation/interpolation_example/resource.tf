resource "aws_eip" "EIP1" {
    domain = "vpc"
}

resource "aws_security_group" "allow_tls" {
  name = "Prueba o Test de Ejemplo"

  ingress {
    description = "TLS from VPC"
    from_port = 443
    to_port = 443
    protocol = "tcp"
     cidr_blocks = [ "${aws_eip.EIP1.public_ip}/32" ]
     # cidr_blocks = [ "aws_eip.EIP1.public_ip"/32]
  }
  tags = {
    name ="Allow_tls"
  }
}

