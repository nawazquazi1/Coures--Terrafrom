variable "images" {
  type    = map
  default = {
    "us-east-1" = "image-1234"
    "us-west-2" = "image-4567"
  }
}
variable "usersage" {
    type = map
    default = {
        nawaz = 20
        akib = 19
    }
}
output "userage1" {
    value = "my name is nawaz and my age is ${lookup(var.usersage, "nawaz")}"
}

variable "UserName" {
  type = string
}

output "userage2" {
    value = "my name is ${var.UserName} and my age is ${lookup(var.usersage, "${var.username}")}"
}

# terraform plan -var username="gaurav" -var usersage="{"gaurav"=22,"saurav"=23}" 