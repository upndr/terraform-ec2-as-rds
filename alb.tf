resource "aws_lb" "web_alb" {
  name               = "web-alb"
  internal           = false
  load_balancer_type = "application"
  subnets            = ["subnet-xxxxx", "subnet-yyyyy"]
  security_groups    = [aws_security_group.web_sg.id]
}
