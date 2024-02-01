# Terraform block
terraform {
  required_version = "~> 1.7.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Aws provider block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}
