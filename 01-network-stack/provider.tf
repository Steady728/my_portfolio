terraform {

  backend "s3" {}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.60.0"
    }
  }
  required_version = ">=1.10.0"
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment = var.environment
      Application = var.application
    }
  }
}
