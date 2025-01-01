terraform {
  backend "s3" {
    bucket = "amir-terraform-backend-bucket"
    key    = "eks/terraform.tfstate"
    region = "ap-south-1"
  }
}