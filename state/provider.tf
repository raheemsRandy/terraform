terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }
  
  backend "s3" {
    bucket = "fun-remote-state"
    key    = "remote-state-demo"
    region = "us-east-1"
   # dynamodb_table = "fun-remote-state"
    encrypt      = true  
    use_lockfile = true  #S3 native locking
  }
}


provider "aws" {
  # Configuration options
}