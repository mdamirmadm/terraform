terraform {
  backend "s3" {
    bucket = "amir-terraform-backend-bucket"
    region = "ap-south-1"
    key    = "jenkins/terraform.tfstate"
  }
}