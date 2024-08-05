
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
  provisioner "file" {
    source      = "script.sh" #terraform machine
    destination = "/tmp/script.sh" #remote machine
  }

  provisioner "file" {
    content = "This is test content" #terraform machine
    destination = "/tmp/content.md" #remote machine.
  }

}
