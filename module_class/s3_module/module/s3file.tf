resource "aws_s3_bucket" "b" { 
  bucket = var.bucketname 
} variable "bucketname" {}
provider "aws"{ 
  region = "us-east-1" 
} 


module "bucket1" { 
  source = "./module" 
  bucketname = "some-made-up-bucket-enver2" 
} 
module "bucket1" { 
  source = "./module" 
  bucketname = "some-made-up-bucket-enver2" 
} 
module "bucket1" { 
  source = "./module" 
  bucketname = "some-made-up-bucket-enver2" 
} 
