terraform {
  cloud {
    organization = "_cloudcte"

    workspaces {
      name = "aws-terraform-github-actions"
    }
  }
}

resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}

resource "aws_instance" "example" {
  ami           =  "ami-0fb653ca2d3203ac1" 
  instance_type = "t2.micro"
}
