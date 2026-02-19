resource "aws_iam_user" "admin" {
    name = "sys_adm${count.index}"
    count = 5
}

output "ARNs" {
    value = aws_iam_user.admin[*].arn
}

output "ARNS_SPECIFIC" {
    value = aws_iam_user.admin[2].name
}