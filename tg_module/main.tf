resource "aws_lb_target_group" "tg_lb" {
    name = var.name
    port = var.port
    protocol = var.protocol
    vpc_id = var.vpc_id
  
}



#attach ec2 to target group:
resource "aws_lb_target_group_attachment" "instance_to_trgp" {
target_group_arn = var.target_group_arn
target_id        = var.target_id
port = var.port

}




