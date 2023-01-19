terraform {
  backend "s3" {
    bucket = "terra-state-web"
    key    = "Terraform/backend_excercise"
    region = "us-east-1"
  }
}