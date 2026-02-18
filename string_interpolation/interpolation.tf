variable "name" {} #The Input Have to be Put when we Started

output "interpolation" {
    value = "Hello, ${var.name}!"
}