
output "key_name" {
    value = aws_key_pair.Key_terraform.key_name
}
output securityGroupDetails {
    value = "${aws_security_group.my_security_group.id}"
}