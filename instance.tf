resource "aws_instance" "web" { 
  ami           = "ami-08d489468314a58df" 
  instance_type = "t2.micro" 
  associate_public_ip_address = "true"
 

tags = { 
    Name = "HelloWorld" 
  } 
} 