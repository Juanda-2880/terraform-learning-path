#Single Region Data Source

data "aws_region" "current" {}

output "current_region" {
    value = data.aws_region.current.id
}

#Multi Region Data Source
data "aws_regions" "current_regions" {}

output "current_regions" {
    value = data.aws_regions.current_regions.names
  
}

#availability zones data source

data "aws_availability_zones" "available" {}

output "available_azs" {
    value = data.aws_availability_zones.available.names[*]
}

#data source with filter

data "aws_regions" "filtered_regions" {
    filter {
        name   = "opt-in-status"
        values = ["opt-in-not-required"]
    }
}

output "filtered_regions" {
    value = data.aws_regions.filtered_regions.names
}

#data source AMI
data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"] 
}