     terraform {
       backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "_cloudcte"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "aws-terraform-github-actions"
         }
       }
     }

     # An example resource that does nothing.
     resource "null_resource" "example" {
       triggers = {
         value = "A example resource that does nothing!"
       }
     }

     resource "aws_instance" "example" {
       ami           =  "ami-0fb653ca2d3203ac1" 
       instance_type = "t2.micro"
     }
