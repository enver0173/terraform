resource "aws_instance" "web" { 
  count = 4
  ami           = "ami-0b2d8d1abb76a53d8" 
  instance_type = "t2.micro" 
  associate_public_ip_address = "true"
  key_name = aws_key_pair.deployer.key_name
  security_groups = ["allow_ssh"] 



   user_data = file("userdata_file")
 

tags = { 
    Name = "HelloWorld${count.index +1}"
  } 
} 

resource "aws_instance" "imported" {
  ami           = "ami-0b2d8d1abb76a53d8" 
  key_name = aws_key_pair.deployer.key_name
  security_groups = ["allow_ssh"] 
}
