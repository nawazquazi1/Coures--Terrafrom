access_Key = "*************************"
secret_key = "*************************"

image         = "ami-04a81a99f5ec58529"
instance_type = "t2.micro"
region        = "us-east-1"
ingress_rules = [
  {
    from_port   = 22
    to_port     = 22
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
user_data = <<-EOF
                 
  EOF