variable "access_Key" {
  type = string
}
variable "secret_key" {
  type = string
}
variable "image" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "region" {
  type = string
}
variable "ingress_rules" {
  description = "List of ingress rules to be applied to the security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "user_data" {
}
