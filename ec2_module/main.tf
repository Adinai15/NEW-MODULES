resource "aws_instance" "instance" {
  ami           = var.ami
  key_name = var.key_name
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = var.security_group_id
  tags = {
    Name = var.instance_tag
  }
user_data = var.user_data
}