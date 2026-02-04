resource "aws_security_group" "variables_demo" {
    name = "variables_demo_sg"
    description = "Security group for variables demo"
}

resource "aws_security_group_ingress_rule" "allow_tls_ipv4" {
    security_group_id = aws_security_group.variables_demo.id
    cidr_ipv4 = var.admin_ip
    from_port = 443
    ip_protocol = "tcp"
    to_port = 443
}

resource "aws_vpc_security_group_ingress_rule" "allow_http_ipv4"    {
    security_group_id = aws_security_group.variables_demo.id
    cidr_ipv4 = var.admin_ip
    from_port = 80
    ip_protocol = "tcp"
    to_port = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_ipv4" {
    security_group_id = aws_security_group.variables_demo.id
    cidr_ipv4 = var.admin_ip
    from_port = 22
    ip_protocol = "tcp"
    to_port = 22
}