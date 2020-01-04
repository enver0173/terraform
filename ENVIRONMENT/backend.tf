terraform {
  backend “s3” {
    bucket = “terraformenver123” #backend-iaac-chyngyz
    key    = “aws/ec2/ec2_state”
    region = “us-east-1"
  }
}