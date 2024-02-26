#attach ec2 to target group:
#resource "aws_lb_target_group_attachment" "Test" {
#target_group_arn = var.target_group_arn
#target_id = var.instance_id

#}

resource "aws_lb_target_group_attachment" "ec2_attachment" {
  count            = length(var.instance_ids)
  target_group_arn = aws_lb_target_group.target_group.arn
  target_id        = var.instance_ids[count.index]
}