# Terraform block
terraform {
  required_version = "~> 1.7.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "5791-learning-terraform"
    key    = "test/terraform.tfstate"
    region = "ap-south-1"
    # dynamodb_table = "learning-terraform-state-table"
  }
}

# Aws provider block
provider "aws" {
  region  = "ap-south-1"
  profile = "default"
}
