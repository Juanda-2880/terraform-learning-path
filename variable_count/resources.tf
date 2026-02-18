resource "aws_iam_user" "app" {
    name = "app_user${count.index}"
    count = 2
    tags = {
      name = "Juanda_Users${count.index}"
    }
}