# resource "aws_iam_user" "Team_Leas" {
#     for_each = toset(["user1", "user2", "user3" ])
#     name = each.key
# }


resource "aws_instance" "example" {
    for_each = {
        "instance_1" = "t2.micro"
        "instance_2" = "t2.medium"
    }
    ami = "AMI-VALUE"
    instance_type = each.value
    tags = {
      name = "Web_${each.key}"
      # Name = each.key
    }
}
