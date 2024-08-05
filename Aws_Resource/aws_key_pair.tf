# Creting Key Pair 
resource "aws_key_pair" "Key_terraform" {
    key_name = "deployer_Key"
    public_key = file("${path.module}/id_rsa.pub")
}


