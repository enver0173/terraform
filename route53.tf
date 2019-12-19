resource "aws_route53_record" "www" { 
  zone_id = "ZVFBE5NWUNXEY" 
  name    = "www.enverguner.com" 
  type    = "A" 
  ttl     = "60" 
  records = [aws_instance.web.public_ip] 
} 