resource "aws_security_group" "allow_ssh1" { 
  name        = "allow_ssh1" 
  description = "Allow TLS inbound traffic" 
  vpc_id      = "vpc-b7aea0d0" 

  ingress { 
    from_port   = 22
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   

} 

egress { 
    from_port       = 0 
    to_port         = 0 
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
} 