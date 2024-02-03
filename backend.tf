terraform {
  backend "s3" {
    bucket = "tfstatebucke38723"
    key    = "aws-terraform.tfstate"
    region = "us-east-1"
  }
}
