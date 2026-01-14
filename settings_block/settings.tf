terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    mycloud = {
      source  = "example/mycloud"
      version = "~> 1.0"
    }
  }

  required_version = ">= 1.0.0"
}


provider "mycloud" {
    region = "us-west-2"
  
}