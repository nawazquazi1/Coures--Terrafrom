
output key_name {
  value = aws_key_pair.Key_terraform.key_name
}
output securityGroupDetails {
  value = aws_security_group.my_security_group.id
}
output "aws_security_group_http_server_details" {
  value = aws_security_group.http_server_sg
}

output "http_server_public_dns" {
  value = aws_instance.http_server.public_dns
}
output "elb_public_dns" {
  value = aws_elb.elb
}

output "my_iam_user_complete_details" {
    value = aws_iam_user.my_iam_user
}