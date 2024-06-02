terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.52.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "ajay-remote-state"
    key    = "workspace"
    region = "us-east-1"
    dynamodb_table = "ajay-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}