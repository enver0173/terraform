provider "aws"{ 
  region = "us-west-2" 
} 

module "bucket1" { 
  source = "./module" 
  bucketname = "some-made-up-bucket-enver-2" 
}