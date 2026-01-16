provider "aws" {
    region = "us-west-2"
    profile = "default"
}

provider "aws" {
    alias  = "us_east_1"
    region = "us-east-1"
    profile = "default2"
}