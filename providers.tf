provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  profile = "default"
}

terraform {
  backend "s3" {
  }
}

# terraform {
#   required_providers {
#     random = {
#       source = "hashicorp/random"
#       version = "3.1.0"
#     }
#   }
# }