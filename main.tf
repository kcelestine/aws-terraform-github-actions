terraform {
  cloud {
    organization = "_cloudcte"

    workspaces {
      name = "aws-terraform-github-actions"
    }
  }
}

provider "aws" {
  assume_role {
    role_arn     = "arn:aws:iam::754274460955:role/gh-role"
  }
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}


