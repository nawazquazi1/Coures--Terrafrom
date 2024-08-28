
resource "aws_instance" "web" {
  ami                    = data.aws_ami.aws_linux_2_latest.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.Key_terraform.key_name
  vpc_security_group_ids = ["${aws_security_group.my_security_group.id}"]
  # user_data              = file("${Path.path.module}/script.sh")
    //subnet_id              = "subnet-3f7b2563"
  subnet_id = data.aws_subnets.default_subnets.ids[0]

  tags = {
    Name = "Instance_From_Terraform"
  }
 connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user"
    private_key = file(var.aws_key_pair)
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo service httpd start",
      "echo Welcome to in28minutes - Virtual Server is at ${self.public_dns} | sudo tee /var/www/html/index.html"
    ]
  }
}

