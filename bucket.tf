resource "aws_s3_bucket" "example1" {
  bucket = "krisdevopsstate2342"

  tags = {
    Name        = "krisdevopsstate2342"
    Environment = "Dev"
  }
}
