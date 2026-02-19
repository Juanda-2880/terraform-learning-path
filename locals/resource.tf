locals {
  service_name = "pago-backend"
  owner        = "equipo-infra"
  
  common_tags = {
    Service = local.service_name
    Owner   = local.owner
    Project = "Migración-Cloud"
  }
}

resource "aws_instance" "servidor" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = local.common_tags
}