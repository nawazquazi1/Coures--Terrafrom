access_Key = "*****************************"
secret_key = "*****************************"

image         = "ami-04a81a99f5ec58529"
instance_type = "t2.large"
region        = "us-east-2"
ingress_rules = [
  {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]
# user_data = <<-EOF
                 
#   EOF