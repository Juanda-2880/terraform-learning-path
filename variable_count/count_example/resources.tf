variable "iam_usenames" {
    type = list(any)
    default = [ "Arias", "Angela", "Robledo", "Guarin", "Dev" ]
}

resource "aws_iam_user" "users" {
    name = var.iam_usenames[count.index]
    count = 5
}