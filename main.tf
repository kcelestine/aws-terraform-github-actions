terraform {
  cloud {
    organization = "_cloudcte"

    workspaces {
      name = "aws-terraform-github-actions"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "${var.access_key}"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}


