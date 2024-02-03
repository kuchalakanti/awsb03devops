terraform {
  backend "s3" {
    bucket = "krisdevopsstate2342"
    key = "myterraform.tfstate"
    region = "us-east-1"
    
  }
}