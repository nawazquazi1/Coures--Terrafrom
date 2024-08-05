variable "username" {
    type    = string
    default = "nawaz quazi"
}

variable "age" {
    type    = number
    default = 20
}

output "userName_and_age" {
    value = "UserName=${var.username} age=${var.age}"
}
