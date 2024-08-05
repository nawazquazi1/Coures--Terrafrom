variable users1 {
    type = list
}
output printfirst {
  value = "first user is ${(var.users[1])}"
}

variable users2 {
  type = list
  default = ["gaurav","Saurav","anKit"]
}
output printUser2{
  value = "first user is ${(var.users2[1])}"
}

# terraform plan -var 'variablename=["valueone","valuetwo","value3"]'

