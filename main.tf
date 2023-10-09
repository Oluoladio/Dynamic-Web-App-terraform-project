# configure aws provider
provider "aws" {
  region = "us-east-1"
  profile = "terraform-user"
}

# stores terraform state file in s3
terraform {
  backend "s3" {
    bucket = "olu-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terraform-user"
  }
}
