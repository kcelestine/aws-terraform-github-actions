terraform {
  cloud {
    organization = "_cloudcte"

    workspaces {
      name = "aws-terraform-github-actions"
    }
  }
}
