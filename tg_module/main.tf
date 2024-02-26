resource "aws_target_group" "tg_lb" {
    name = var.name
    port = var.port
    protocol = var.protocol
    vpc_id = var.vpc_id
  
}







