resource "aws_autoscaling_group" "web_asg" {
  name                 = "web-asg"
  desired_capacity     = 2
  max_size             = 3
  min_size             = 1
  vpc_zone_identifier  = ["subnet-xxxxx", "subnet-yyyyy"]
  launch_template {
    id      = aws_launch_template.web.id
    version = "$Latest"
  }
}
