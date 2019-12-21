resource "aws_instance" "web" { 
  count = var.count_instance
  ami           = var.ami 
  instance_type = "var.instance_type" 
  associate_public_ip_address = "true"
  key_name = aws_key_pair.deployer.key_name
  security_groups = ["allow_ssh1"] 



   user_data = file("userdata_file")
 

   tags = { 
     Name = "HelloWorld${count.index +1}"
  } 
} 

resource "aws_instance" "imported" {
  ami           = "ami-0b2d8d1abb76a53d8" 
  key_name = aws_key_pair.deployer.key_name
  security_groups = ["allow_ssh1"]
  instance_type="t2.micro" 
}
