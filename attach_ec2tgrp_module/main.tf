#attach ec2 to target group:
resource "aws_lb_target_group_attachment" "Test" {
target_group_arn = var.target_group_arn
target_id = var.instance_ids

}