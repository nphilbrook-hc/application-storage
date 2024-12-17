terraform {

  required_version = "~>1.6"

  backend "s3" {
    region         = "us-east-2"
    bucket         = "philbrook-plugincachedebugstate"
    key            = "plugincachedebug.tfstate"
    dynamodb_table = "philbrook-plugincachedebugstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.81"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}
