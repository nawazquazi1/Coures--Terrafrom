
resource "aws_instance" "web" {
  ami                    = "Ubaunt"
  instance_type          = "t2 micero"
  key_name               = "my-key"
  tags = {
    Name = "Instance_From_Terraform"
  }
  connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("${path.module}/id_rsa")
      host        = "${self.web.public_ip}"
    }
  provisioner "local-exec" {
    command = "echo ${self.public_ip}" # echo X.X.X.X > /tmp/Public_Ip.txt
    }
  }
