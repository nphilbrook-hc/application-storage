terraform {

  required_version = "~>1.6"


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.81"
    }
  }
  cloud {
    organization = "philbrook-tf-migrate-test"
    hostname     = "app.terraform.io"
    workspaces {
      project = "application_storage"
      name    = "application_storage_default"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}
