terraform {
  backend "s3" {
    bucket = "terra-state-web"
    key    = "Terraform/backend"
    region = "us-east-1"
  }
}