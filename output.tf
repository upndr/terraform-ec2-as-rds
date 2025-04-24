output "alb_dns" {
  value = aws_lb.web_alb.dns_name
}
output "cloudfront_url" {
  value = aws_cloudfront_distribution.alb_cdn.domain_name
}
