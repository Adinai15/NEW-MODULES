#attach ec2 to target group:
#resource "aws_lb_target_group_attachment" "Test" {
#target_group_arn = var.target_group_arn
#target_id = var.instance_ids

#}

resource "aws_lb_target_group_attachment" "ec2_attachment" {
  count            = length(var.instance_ids)
  target_group_arn = var.target_group_arn
  target_id        = var.instance_ids[count.index]
}