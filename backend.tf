terraform {
  backend "s3" {
    bucket = "backend-enver4773"
    key    = "infrastructure"
    region = "us-west-1"
  }
}