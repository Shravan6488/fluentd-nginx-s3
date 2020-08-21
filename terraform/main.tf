provider "aws" {
  region = "ap-southeast-1"
  profile = "testing"
}
resource "aws_s3_bucket" "bucket" {
  bucket = "challengebucket1234"
  force_destroy = true
  acl = "private"

  lifecycle_rule {
    enabled = true

    transition {
      days = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days = 60
      storage_class = "GLACIER"
    }
  }
  tags = {
    Name = "test-bucket"
  }

}

