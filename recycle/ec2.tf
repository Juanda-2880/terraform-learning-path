resource "aws_instance" "ec2_example_2880" {
    ami = "ami-06f1fc9ae5ae7f31e"
    # ami = "ami-0f5fcdfbd140e4ab7"
    instance_type = "t3.micro"



     #lifecycle {
     #   create_before_destroy = true
    # }

    #lifecycle {
    # ignore_changes = [
    #     Ignore changes to tags, instance_type
    #     tags,instance_type,
    # ]
    #}

    #lifecycle {
    # prevent_destroy = true
    #}
}