terraform {
  required_version = ">= 1.4.0" # Latest version
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.11.0" # Latest version
    }
  }
  backend "s3" {
    bucket = "ebury-terraform-state-prod"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}
