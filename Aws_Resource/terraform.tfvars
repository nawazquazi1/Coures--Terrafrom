access_Key = "my-acess-key"
secret_key = "my-secret-key"
image = "data.aws_ami.ubuntu.id"
instance_type = "t3.micro"

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

