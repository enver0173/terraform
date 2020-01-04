terraform {
  backend “s3” {
    bucket = “terraformenver123” #backend-iaac-chyngyz
    key    = “aws/iam/iam_state”
    region = “us-east-1"
  }
}