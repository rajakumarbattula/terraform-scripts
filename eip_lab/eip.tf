
resource "aws_eip" "my_first_eip" {
  instance = aws_instance.eip_demo_using_terraform
  vpc      = true
}

output "my_eip_address" {
  value = aws_eip.my_first_eip.public_ip
}