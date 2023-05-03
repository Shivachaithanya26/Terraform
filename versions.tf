terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAZU56WWJKJAPUKEA5"
  secret_key = "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"
}

