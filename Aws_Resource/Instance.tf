
resource "aws_instance" "web" {
  ami                    = var.image
  instance_type          = var.instance_type
  key_name               = aws_key_pair.Key_terraform.key_name
  vpc_security_group_ids = ["${aws_security_group.my_security_group.id}"]
  # user_data              = file("${Path.path.module}/script.sh")
  tags = {
    Name = "Instance_From_Terraform"
  }
}

