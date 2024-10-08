terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.67.0"
    }
  }
  backend "s3" {
    bucket         = "skywordstate-demo"
    key            = "expense-vapc-1"
    region         = "us-east-1"
    dynamodb_table = "skyword-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
