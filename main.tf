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
