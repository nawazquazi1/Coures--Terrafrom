variable "userName" {      
}

output "PrintUserName" {
  value = "Hello ${var.userName}"
}
