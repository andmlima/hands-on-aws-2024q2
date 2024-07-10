terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket  = "ciablue-terraform-eks"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    profile = "default"
  }
}

provider "aws" {
  region = var.aws_region
}
