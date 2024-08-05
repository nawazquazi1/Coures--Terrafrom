variable "name" {
}

output "name" {
  value = "$(var.name)"
}

# export TF_VAR_username=nawaz 