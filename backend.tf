terraform {
  backend "s3" {
    bucket = "state-file-terra"
    key    = "terraform.tfstat"
    region = "us-east-2"
    profile = "default"
  }
}